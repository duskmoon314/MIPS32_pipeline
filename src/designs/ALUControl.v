`timescale  1ns / 1ps

module ALUControl (
         ALUOp,
         Funct,
         ALUCtrl,
         sign
       );

input [3: 0] ALUOp;
input [5: 0] Funct;
output reg [4: 0] ALUCtrl;
output sign;

parameter alu_AND = 5'b00000;
parameter alu_OR = 5'b00001;
parameter alu_ADD = 5'b00010;
parameter alu_SUB = 5'b00110;
parameter alu_SLT = 5'b00111;
parameter alu_NOR = 5'b01100;
parameter alu_XOR = 5'b01101;
parameter alu_SLL = 5'b10000;
parameter alu_SRL = 5'b10001;
parameter alu_SRA = 5'b10010;

assign sign = (ALUOp[2: 0] == 3'b001) ? ~Funct[0] : ~ALUOp[3];

reg [4: 0] alu_R_Funct;
always @( * )
  begin
    case (Funct)
      6'h00:
        alu_R_Funct <= alu_SLL;
      6'h02:
        alu_R_Funct <= alu_SRL;
      6'h03:
        alu_R_Funct <= alu_SRA;
      6'h20:
        alu_R_Funct <= alu_ADD;
      6'h21:
        alu_R_Funct <= alu_ADD;
      6'h22:
        alu_R_Funct <= alu_SUB;
      6'h23:
        alu_R_Funct <= alu_SUB;
      6'h24:
        alu_R_Funct <= alu_AND;
      6'h25:
        alu_R_Funct <= alu_OR;
      6'h26:
        alu_R_Funct <= alu_XOR;
      6'h27:
        alu_R_Funct <= alu_NOR;
      6'h2A:
        alu_R_Funct <= alu_SLT;
      6'h2B:
        alu_R_Funct <= alu_SLT;
      default:
        alu_R_Funct <= alu_ADD;
    endcase
  end

always @( * )
  begin
    case (ALUOp[2: 0])
      3'b000 :
        ALUCtrl <= alu_ADD;
      3'b001 :
        ALUCtrl <= alu_R_Funct;
      3'b010:
        ALUCtrl <= alu_AND;
      3'b011:
        ALUCtrl <= alu_OR;
      3'b100:
        ALUCtrl <= alu_XOR;
      3'b101:
        ALUCtrl <= alu_SLT;
      default:
        ALUCtrl <= alu_ADD;
    endcase
  end

endmodule
