`timescale  1ns / 1ps

module InstructionMem (
         Address,
         dout
       );
input [8: 0] Address;
output [31: 0] dout;

dist_mem_gen_ins ins_mem(
                   .a(Address),
                   .spo(dout)
                 );

endmodule
