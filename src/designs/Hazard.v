`timescale 1ns / 1ps

module Hazard (
         reset,
         PCSrc,
         branch_hazard,
         jump_hazard,
         ID_EX_MemRead,
         ID_EX_Rt,
         IF_ID_Rs,
         IF_ID_Rt,
         PC_wen,
         IF_Flush,
         IF_wen,
         ID_Flush
       );
input branch_hazard, jump_hazard, ID_EX_MemRead, reset;
input wire [2: 0] PCSrc;
input [4: 0] ID_EX_Rt, IF_ID_Rs, IF_ID_Rt;
output PC_wen, IF_Flush, IF_wen, ID_Flush;

// Load Use Hazard
wire load_use_hazard;
assign load_use_hazard =
       reset ? 1'b0 :
       ID_EX_MemRead &&
       (ID_EX_Rt == IF_ID_Rs ||
        ID_EX_Rt == IF_ID_Rt);

assign PC_wen = ~load_use_hazard;
assign IF_wen = ~load_use_hazard;

assign IF_Flush = reset ? 1'b0 : (jump_hazard || branch_hazard) && (PCSrc != 3'b011 && PCSrc != 3'b100);
assign ID_Flush = reset ? 1'b0 : branch_hazard;
endmodule
