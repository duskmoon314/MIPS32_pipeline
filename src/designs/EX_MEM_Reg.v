module EX_MEM_Reg (
         clk,
         reset,
         EX_PC_p4,
         EX_alu_out,
         EX_rt_data,
         EX_Rd,
         EX_MemWrite,
         EX_MemRead,
         EX_MemToReg,
         EX_RegWrite
       );
input clk, reset;

input [31: 0] EX_PC_p4, EX_alu_out, EX_rt_data;
input [4: 0] EX_Rd;
input [1: 0] EX_MemToReg;
input EX_MemWrite, EX_MemRead, EX_RegWrite;

reg [31: 0] PC_p4, alu_out, rt_data;
reg [4: 0] Rd;
reg [1: 0] MemToReg;
reg MemWrite, MemRead, RegWrite;

always @(posedge clk)
  begin
    if (reset)
      begin
        PC_p4 <= 32'h0;
        alu_out <= 32'h0;
        rt_data <= 32'h0;
        Rd <= 5'h0;
        MemToReg <= 2'h0;
        MemWrite <= 1'b0;
        MemRead <= 1'b0;
        RegWrite <= 1'b0;
      end
    else
      begin
        PC_p4 <= EX_PC_p4;
        alu_out <= EX_alu_out;
        rt_data <= EX_rt_data;
        Rd <= EX_Rd;
        MemToReg <= EX_MemToReg;
        MemWrite <= EX_MemWrite;
        MemRead <= EX_MemRead;
        RegWrite <= EX_RegWrite;
      end
  end

endmodule
