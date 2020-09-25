`timescale  1ns / 1ps

module DataMem (
         clk,
         wen,
         Address,
         din,
         dout
       );
input clk, wen;
input [8: 0] Address;
input [31: 0] din;
output [31: 0] dout;

dist_mem_gen_data data_mem(
                    .a(Address),
                    .d(din),
                    .clk(clk),
                    .we(wen),
                    .spo(dout)
                  );
endmodule
