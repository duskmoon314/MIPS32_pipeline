`timescale  1ns / 1ps

module CPU (
         clk,
         reset,
         led,
         ssdt
       );
input wire clk, reset;
output [7: 0] led;
output [11: 0] ssdt;

wire Supervised, Exception, Interrupt;
wire IF_wen, IF_Flush, ID_Flush;
wire IRQ;

/* === IF STAGE === */

wire ins_en, ins_wen;
wire [31: 0] branch_target;
wire [31: 0] jump_target;
wire [31: 0] jr_target;
wire branch_hazard;
wire [2: 0] PCSrc;

// Update PC
wire [31: 0] PC, PC_next, PC_p4;
wire PC_wen;
assign PC_p4 = {PC[31], PC[30: 0] + 31'd4};
assign PC_next =
       branch_hazard ? branch_target :
       (PCSrc == 3'b000) ? PC_p4 :
       (PCSrc == 3'b001) ? jump_target :
       (PCSrc == 3'b010) ? jr_target :
       (PCSrc == 3'b011) ? 32'h80000004 :
       (PCSrc == 3'b100) ? 32'h80000008 :
       32'h80000000;
ProgramCounter program_counter(
                 .clk(clk),
                 .reset(reset),
                 .wen(PC_wen),
                 .pc_next(PC_next),
                 .pc(PC)
               );

// Fetch Instruction
wire [31: 0] Instruction;
InstructionMem ins_mem(
                 .Address(PC[10: 2]),
                 .dout(Instruction)
               );

/* === IF ID === */

IF_ID_Reg if_id(
            .clk(clk),
            .reset(reset),
            .wen(IF_wen),
            .Flush(IF_Flush),
            .IF_Instruction(Instruction),
            .IF_PC_p4(PC_p4)
          );

/* === ID STAGE === */

assign Supervised = PC[31] || if_id.PC_p4[31];

// Control signal
wire ImmSrc;
wire [2: 0] BranchOp;
wire [1: 0] RegDst;
wire [2: 0] ALUSrc;
wire [3: 0] ALUOp;
wire ExtOp;
wire RegWrite;
wire MemWrite;
wire MemRead;
wire jump_hazard;
wire [1: 0] MemToReg;

Control ctrl(
          .OpCode(if_id.Instruction[31: 26]),
          .Funct(if_id.Instruction[5: 0]),
          .ImmSrc(ImmSrc),
          .PCSrc(PCSrc),
          .BranchOp(BranchOp),
          .RegDst(RegDst),
          .ALUSrc(ALUSrc),
          .ALUOp(ALUOp),
          .ExtOp(ExtOp),
          .RegWrite(RegWrite),
          .MemWrite(MemWrite),
          .MemRead(MemRead),
          .MemToReg(MemToReg),
          .jump_hazard(jump_hazard),
          .Supervised(Supervised),
          .IRQ(IRQ),
          .Exception(Exception),
          .Interrupt(Interrupt)
        );

// Hazard Unit
Hazard hazard(
         .reset(reset),
         .PCSrc(PCSrc),
         .branch_hazard(branch_hazard),
         .jump_hazard(jump_hazard),
         .ID_EX_MemRead(id_ex.MemRead),
         .ID_EX_Rt(id_ex.Rt),
         .IF_ID_Rs(if_id.Instruction[25: 21]),
         .IF_ID_Rt(if_id.Instruction[20: 16]),
         .PC_wen(PC_wen),
         .IF_Flush(IF_Flush),
         .IF_wen(IF_wen),
         .ID_Flush(ID_Flush)
       );

// Register Heap
wire [31: 0] rs_data, rt_data;
Register regs(
           .clk(clk),
           .reset(reset),
           .wen(mem_wb.RegWrite),
           .read_register_1(if_id.Instruction[25: 21]),
           .read_register_2(if_id.Instruction[20: 16]),
           .write_register(mem_wb.Rd),
           .din(mem_wb.write_data),
           .dout1(rs_data),
           .dout2(rt_data)
         );

// Extension
wire [31: 0] Imm;
assign Imm = ImmSrc ?
       (ExtOp ?
        {{17{if_id.Instruction[15]}}, if_id.Instruction[14 : 0]}
        : {16'b0, if_id.Instruction[15 : 0]})
       : {if_id.Instruction[15 : 0], 16'b0};

// jump
assign jump_target = {if_id.PC_p4[31: 28], if_id.Instruction[25: 0], 2'b00};

// ID Forward
wire [1: 0] id_forward_1;
wire id_forward_2;
ID_Forward ID_Forward_ctrl(
             .EX_MEM_Rd(ex_mem.Rd),
             .MEM_WB_Rd(mem_wb.Rd),
             .EX_MEM_RegWrite(ex_mem.RegWrite),
             .MEM_WB_RegWrite(mem_wb.RegWrite),
             .IF_ID_Rs(if_id.Instruction[25: 21]),
             .IF_ID_Rt(if_id.Instruction[20: 16]),
             .ID_Forward_1(id_forward_1),
             .ID_Forward_2(id_forward_2)
           );

wire [31: 0] rs_data_forward_id, rt_data_forward_id;
assign rs_data_forward_id =
       (id_forward_1 == 2'b00) ? rs_data :
       (id_forward_1 == 2'b01) ? ex_mem.alu_out :
       mem_wb.write_data;
assign rt_data_forward_id = id_forward_2 ? mem_wb.write_data : rt_data;

// jr target
assign jr_target = rs_data_forward_id;

/* === ID EX === */

ID_EX_Reg id_ex(
            .clk(clk),
            .reset(reset),
            .Flush(ID_Flush),
            .ID_PC_p4(if_id.PC_p4),
            .ID_rs_data(rs_data_forward_id),
            .ID_rt_data(rt_data_forward_id),
            .ID_Imm(Imm),
            .ID_Rs(if_id.Instruction[25: 21]),
            .ID_Rt(if_id.Instruction[20: 16]),
            .ID_Rd(if_id.Instruction[15: 11]),
            .ID_BranchOp(BranchOp),
            .ID_ALUSrc(ALUSrc),
            .ID_ALUOp(ALUOp),
            .ID_RegDst(RegDst),
            .ID_MemWrite(MemWrite),
            .ID_MemRead(MemRead),
            .ID_MemToReg(MemToReg),
            .ID_RegWrite(RegWrite)
          );

/* === EX STAGE === */

// control signal
wire [4: 0] ALUCtrl;
wire sign;

ALUControl ALU_ctrl(
             .ALUOp(id_ex.ALUOp),
             .Funct(id_ex.Imm[5: 0]),
             .ALUCtrl(ALUCtrl),
             .sign(sign)
           );

// EX Forward
wire [1: 0] ex_forward_1, ex_forward_2;
EX_Forward EX_Forward_ctrl(
             .EX_MEM_Rd(ex_mem.Rd),
             .MEM_WB_Rd(mem_wb.Rd),
             .EX_MEM_RegWrite(ex_mem.RegWrite),
             .MEM_WB_RegWrite(mem_wb.RegWrite),
             .ID_EX_Rs(id_ex.Rs),
             .ID_EX_Rt(id_ex.Rt),
             .EX_Forward_1(ex_forward_1),
             .EX_Forward_2(ex_forward_2)
           );

wire [31: 0] rs_data_forward_ex, rt_data_forward_ex;
assign rs_data_forward_ex =
       (ex_forward_1 == 2'b01) ? ex_mem.alu_out :
       (ex_forward_1 == 2'b10) ? mem_wb.write_data :
       id_ex.rs_data;
assign rt_data_forward_ex =
       (ex_forward_2 == 2'b01) ? ex_mem.alu_out :
       (ex_forward_2 == 2'b10) ? mem_wb.write_data :
       id_ex.rt_data;

wire [31: 0] alu_src1, alu_src2;
assign alu_src1 =
       (id_ex.ALUSrc[1 : 0] == 2'b01) ? id_ex.Imm :
       (id_ex.ALUSrc[1 : 0] == 2'b10) ? 32'h0 :
       rs_data_forward_ex;
assign alu_src2 = id_ex.ALUSrc[2] ? id_ex.Imm : rt_data_forward_ex;

// ALU
wire [31: 0] alu_out;
wire ZF;

ALU alu(
      .input_1(alu_src1),
      .input_2(alu_src2),
      .ALUCtrl(ALUCtrl),
      .sign(sign),
      .zero(ZF),
      .result(alu_out)
    );

// Branch
assign branch_target = id_ex.PC_p4 + {id_ex.Imm[29: 0], 2'b00};

Branch branch(
         .input_1(rs_data_forward_ex),
         .input_2(rt_data_forward_ex),
         .BranchOp(id_ex.BranchOp),
         .flag(id_ex.Rt),
         .branch_hazard(branch_hazard)
       );

// RegDst
wire [4: 0] Rd;
assign Rd =
       (id_ex.RegDst == 2'b01) ? id_ex.Rd :
       (id_ex.RegDst == 2'b10) ? 5'd31 :
       (id_ex.RegDst == 2'b11) ? 5'd26 :
       id_ex.Rt;

/* === EX MEM === */

EX_MEM_Reg ex_mem(
             .clk(clk),
             .reset(reset),
             .EX_PC_p4(id_ex.PC_p4),
             .EX_alu_out(alu_out),
             .EX_rt_data(rt_data_forward_ex),
             .EX_Rd(Rd),
             .EX_MemWrite(id_ex.MemWrite),
             .EX_MemRead(id_ex.MemRead),
             .EX_MemToReg(id_ex.MemToReg),
             .EX_RegWrite(id_ex.RegWrite)
           );

/* === MEM STAGE === */

// BUS
wire [31: 0] mem_out;
Bus bus(
      .clk(clk),
      .reset(reset),
      .en(ex_mem.MemRead),
      .wen(ex_mem.MemWrite),
      .Address(ex_mem.alu_out),
      .din(ex_mem.rt_data),
      .dout(mem_out),
      .IRQ(IRQ),
      .led(led),
      .ssdt(ssdt)
    );

wire [31: 0] write_data;
assign write_data =
       (ex_mem.MemToReg == 2'b10) ?
       (ex_mem.Rd == 5'd26 ?
        ex_mem.PC_p4 - 32'h4 :
        ex_mem.PC_p4) :
       (ex_mem.MemToReg == 2'b01) ? mem_out :
       ex_mem.alu_out;

/* === MEM WB === */

MEM_WB_Reg mem_wb(
             .clk(clk),
             .reset(reset),
             .MEM_write_data(write_data),
             .MEM_Rd(ex_mem.Rd),
             .MEM_RegWrite(ex_mem.RegWrite)
           );

/* === WB STAGE === */

// write reg => do at regs

endmodule
