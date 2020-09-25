`timescale  1ns / 1ps

module Control (
         OpCode,
         Funct,
         ImmSrc,
         PCSrc,
         BranchOp,
         RegDst,
         ALUSrc,
         ALUOp,
         ExtOp,
         RegWrite,
         MemWrite,
         MemRead,
         MemToReg,
         jump_hazard,
         Supervised,
         IRQ,
         Exception,
         Interrupt
       );

input [5: 0] OpCode, Funct;
input IRQ, Supervised;
output ImmSrc, RegWrite, MemWrite, MemRead, ExtOp, jump_hazard;
output [2: 0] PCSrc, ALUSrc, BranchOp;
output [3: 0] ALUOp;
output [1: 0] MemToReg, RegDst;
output reg Exception;
output Interrupt;

wire is_R;
assign is_R = OpCode == 6'h0;

assign Interrupt = ~Supervised && IRQ;

// [31: 26] Opcode, [25: 21] Rs, [20: 16] Rt
// [15: 11] Rd, [10: 6] shamt, [5: 0] Funct

// current: Undefined Command Exception
always @( * )
  begin
    if (is_R)
      begin
        case (Funct)
          6'h00:
            Exception <= 0; //sll

          6'h02:
            Exception <= 0; //srl
          6'h03:
            Exception <= 0; //sra

          6'h08:
            Exception <= 0; //jr
          6'h09:
            Exception <= 0; //jalr

          6'h20:
            Exception <= 0; //add
          6'h21:
            Exception <= 0; //addu
          6'h22:
            Exception <= 0; //sub
          6'h23:
            Exception <= 0; //subu
          6'h24:
            Exception <= 0; //and
          6'h25:
            Exception <= 0; //or
          6'h26:
            Exception <= 0; //xor
          6'h27:
            Exception <= 0; //nor


          6'h2A:
            Exception <= 0; //slt
          6'h2B:
            Exception <= 0; //sltu

          default:
            Exception <= Supervised ? 0 : 1;
        endcase
      end
    else
      begin
        case (OpCode)
          6'h01:
            Exception <= 0; //bltz bgez
          6'h02:
            Exception <= 0; //j
          6'h03:
            Exception <= 0; //jal
          6'h04:
            Exception <= 0; //beq
          6'h05:
            Exception <= 0; //bne
          6'h06:
            Exception <= 0; //blez
          6'h07:
            Exception <= 0; //bgtz
          6'h08:
            Exception <= 0; //addi
          6'h09:
            Exception <= 0; //addiu
          6'h0A:
            Exception <= 0; //slti
          6'h0B:
            Exception <= 0; //sltiu
          6'h0C:
            Exception <= 0; //andi
          6'h0D:
            Exception <= 0; //ori
          6'h0E:
            Exception <= 0; //xori
          6'h0F:
            Exception <= 0; //lui

          6'h23:
            Exception <= 0; //lw

          6'h2B :
            Exception <= 0; //sw
          default:
            Exception <= Supervised ? 0 : 1;
        endcase
      end
  end

// lui => imm << 16
assign ImmSrc = ~(OpCode == 6'h0F);

// ExtOp 0 => 0_extend 1 => sign_extend
// Not R_type => I_type
// andi ori xori => 0_extend
assign ExtOp =
       ~is_R &&
       OpCode != 6'h0C &&
       OpCode != 6'h0D &&
       OpCode != 6'h0E;

// 000 => PC + 4
// 001 => jump target
// 010 => jr
// 011 => 0x80000004 Interrupt
// 100 => 0x80000008 Exception
assign PCSrc =
       Interrupt ? 3'b011 :
       Exception ? 3'b100 :
       (OpCode == 6'h02 || OpCode == 6'h03) ? 3'b001 :
       (OpCode == 6'h00 && (Funct == 6'h08 || Funct == 6'h09)) ? 3'b010 :
       3'b000;

assign BranchOp =
       ~Interrupt &&
       ~Exception &&
       (OpCode == 6'h1 ||
        OpCode == 6'h4 ||
        OpCode == 6'h5 ||
        OpCode == 6'h6 ||
        OpCode == 6'h7) ?
       OpCode[2 : 0] :
       3'h0;

// 0x2B sw
// branch
// j
// jr
assign RegWrite =
       Interrupt ||
       Exception ||
       ~(OpCode == 6'h2B ||
         ( | BranchOp) ||
         OpCode == 6'h02 ||
         (OpCode == 6'h00 && Funct == 6'h08));

assign MemRead = (OpCode == 6'h23) && ~(Interrupt || Exception);
assign MemWrite = (OpCode == 6'h2B) && ~(Interrupt || Exception);

// Interrupt Exception => $k0
// jal jalr => $ra
// R_type => rd
// default => rt
assign RegDst =
       (Interrupt || Exception) ? 2'b11 :
       (OpCode == 6'h03 || (OpCode == 6'h00 && Funct == 6'h09)) ? 2'b10 :
       is_R ? 2'b01 :
       2'b00;

// 001 R_type
// 010 andi
// 011 ori
// 100 xori
// 110 slti sltiu
// 000 default => add
assign ALUOp[2: 0] =
       (OpCode == 6'h00) ? 3'b001 :
       (OpCode == 6'h0C) ? 3'b010 :
       (OpCode == 6'h0D) ? 3'b011 :
       (OpCode == 6'h0E) ? 3'b100 :
       (OpCode == 6'h0A || OpCode == 6'h0B) ? 3'b101 :
       3'b000;

assign ALUOp[3] = OpCode[0];

// 01 sll sra srl => Imm
// 10 lui => 0
// 00 default => rs_data
assign ALUSrc[1: 0] =
       (is_R &&
        (Funct == 6'h00 ||
         Funct == 6'h02 ||
         Funct == 6'h03)) ? 2'b01 :
       (OpCode == 6'h0F) ? 2'b10 :
       2'b00;

assign ALUSrc[2] = ~is_R;

// 00 ALU result
// 01 Mem
// 10 PC + 4
assign MemToReg =
       (Interrupt ||
        Exception ||
        (OpCode == 6'h03 ||
         (OpCode == 6'h00 &&
          Funct == 6'h09))) ? 2'b10 :
       (OpCode == 6'h23) ? 2'b01 :
       2'b00;

assign jump_hazard =
       (OpCode == 6'h2) ||
       (OpCode == 6'h3) ||
       (is_R && (Funct == 6'h8 || Funct == 6'h9));

endmodule
