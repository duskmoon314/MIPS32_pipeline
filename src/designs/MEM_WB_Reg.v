module MEM_WB_Reg (
         clk,
         reset,
         MEM_write_data,
         MEM_Rd,
         MEM_RegWrite
       );
input clk, reset;

input [31: 0] MEM_write_data;
input [4: 0] MEM_Rd;
input MEM_RegWrite;

reg [31: 0] write_data;
reg [4: 0] Rd;
reg [1: 0] MemToReg;
reg RegWrite;

always @(posedge clk)
  begin
    if (reset)
      begin
        write_data <= 32'b0;
        Rd <= 5'b0;
        RegWrite <= 1'b0;
      end
    else
      begin
        write_data <= MEM_write_data;
        Rd <= MEM_Rd;
        RegWrite <= MEM_RegWrite;
      end
  end
endmodule
