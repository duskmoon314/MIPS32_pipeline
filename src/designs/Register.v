`timescale 1ns / 1ps

module Register (
         clk,
         reset,
         wen,
         read_register_1,
         read_register_2,
         write_register,
         din,
         dout1,
         dout2,
         test_register,
         test_out
       );
input clk, reset, wen;
input [4: 0] read_register_1, read_register_2, write_register, test_register;
input [31: 0] din;
output [31: 0] dout1, dout2, test_out;

reg [31: 0] registers [31: 1];

assign dout1 = (read_register_1 == 5'b0) ? 32'h0 : registers[read_register_1];
assign dout2 = (read_register_2 == 5'b0) ? 32'h0 : registers[read_register_2];

integer i;
always @(posedge reset or posedge clk)
  if (reset)
    begin
      for (i = 1; i < 32; i = i + 1)
        registers[i] <= 32'h00000000;
      registers[29] <= 32'h00002000;
    end
  else if (wen && (write_register != 5'b00000))
    registers[write_register] <= din;

assign test_out = registers[test_register];

endmodule
