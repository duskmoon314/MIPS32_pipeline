`timescale  1ns / 1ps

module ProgramCounter (
         clk,
         reset,
         wen,
         pc_next,
         pc
       );
input clk, reset, wen;
input [31: 0] pc_next;
output reg [31: 0] pc;

always @(posedge clk)
  begin
    if (reset)
      begin
        pc <= 32'h80000000;
      end
    else
      begin
        if (wen)
          pc <= pc_next;
      end
  end

endmodule
