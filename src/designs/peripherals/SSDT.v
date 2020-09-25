`timescale  1ns / 1ps

module SSDT (
         clk,
         reset,
         wen,
         din,
         ssdt
       );
input clk, reset, wen;
input [31: 0] din;
output reg [11: 0] ssdt;

always @(posedge clk)
  begin
    if (reset)
      begin
        ssdt <= 12'hFFF;
      end
    else
      begin
        if (wen)
          begin
            ssdt <= din[11: 0];
          end
      end
  end
endmodule
