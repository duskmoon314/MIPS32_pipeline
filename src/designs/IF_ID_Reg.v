module IF_ID_Reg (
         clk,
         reset,
         wen,
         Flush,
         IF_Instruction,
         IF_PC_p4
       );
input clk, reset, wen, Flush;
input [31: 0] IF_Instruction, IF_PC_p4;

reg [31: 0] Instruction, PC_p4;

always @(posedge clk)
  begin
    if (reset)
      begin
        Instruction <= 32'h0;
        PC_p4 <= 32'h0;
      end
    else
      begin
        if (wen)
          begin
            Instruction <= Flush ? 32'h0 : IF_Instruction;
            PC_p4 <= IF_PC_p4;
          end
      end
  end
endmodule
