`timescale  1ns / 1ps

module LED (
         clk,
         reset,
         wen,
         din,
         led
       );
input clk, reset, wen;
input [31: 0] din;
output reg [31: 0] led;

always @(posedge clk)
  begin
    if (reset)
      begin
        led <= 32'h00000000;
      end
    else
      begin
        if (wen)
          begin
            led <= din;
          end
      end
  end
endmodule
