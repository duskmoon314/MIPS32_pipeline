`timescale  1ns / 1ps

module ALU (
         input_1,
         input_2,
         ALUCtrl,
         sign,
         zero,
         //  overflow,
         result
       );

input [31: 0] input_1, input_2;
input [4: 0] ALUCtrl;
input sign;
output zero;
// output [1: 0] overflow; //add overflow
output reg [31 : 0] result;

assign zero = (result == 0);

wire [1: 0] ss;
assign ss = {input_1[31], input_2[31]};

// wire [32: 0] tmp;
// assign tmp = sign ? {input_1[31], input_1} + {input_2[31], input_2} : {0, input_1} + {0, input_2};
// assign overflow = tmp[32: 31];

// Compare 2 signed nums, same sign
wire lt_31;
assign lt_31 = (input_1[30: 0] < input_2[30: 0]);

// ss == 2'b01 => input_1 pos, input_2 neg
// ^ = 1 => 01 or 10
// ^ = 0 => lt_31
wire lt_signed;
assign lt_signed = (input_1[31] ^ input_2[31]) ?
       ((ss == 2'b01) ? 0 : 1) : lt_31;

always @( * )
  begin
    case (ALUCtrl)
      5'b00000:
        result <= input_1 & input_2;
      5'b00001:
        result <= input_1 | input_2;
      5'b00010:
        result <= input_1 + input_2;
      5'b00110:
        result <= input_1 - input_2;
      5'b00111:
        result <= {31'h00000000, sign ? lt_signed : (input_1 < input_2)};
      5'b01100:
        result <= ~(input_1 | input_2);
      5'b01101:
        result <= input_1 ^ input_2;
      5'b10000:
        result <= (input_2 << input_1[10: 6]);
      5'b10001:
        result <= (input_2 >> input_1[10: 6]);
      5'b10010:
        result <= ({{32{input_2[31]}}, input_2} >> input_1[10: 6]);
      default:
        result <= 32'h00000000;
    endcase
  end

endmodule
