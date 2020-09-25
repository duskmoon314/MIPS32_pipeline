`timescale  1ns / 1ps

module SysTick (
         clk,
         reset,
         systick
       );
input clk, reset;
output reg [31: 0] systick;

always @(posedge clk)
  begin
    if (reset)
      begin
        systick <= 332'h00000000;
      end
    else
      begin
        systick <= systick + 32'b1;
      end
  end
endmodule
