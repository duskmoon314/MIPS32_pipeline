// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 20 01:29:09 2020
// Host        : duskmoonG3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dist_mem_gen_ins -prefix
//               dist_mem_gen_ins_ dist_mem_gen_ins_sim_netlist.v
// Design      : dist_mem_gen_ins
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_ins,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_ins
   (a,
    spo);
  input [8:0]a;
  output [31:0]spo;

  wire [8:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "9" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "512" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_ins.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_mem_gen_ins_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "9" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "512" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_ins.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module dist_mem_gen_ins_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [8:0]a;
  input [31:0]d;
  input [8:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [8:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:0] = \^spo [29:0];
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_ins_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31],\^spo [29:0]}));
endmodule

module dist_mem_gen_ins_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [30:0]spo;
  input [8:0]a;

  wire [8:0]a;
  wire [30:0]spo;

  dist_mem_gen_ins_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module dist_mem_gen_ins_rom
   (spo,
    a);
  output [30:0]spo;
  input [8:0]a;

  wire [8:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[0]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h8553022CA0A8A001)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4001124210402114)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2B04360866492C44)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055400040)) 
    \spo[10]_INST_0 
       (.I0(a[7]),
        .I1(\spo[10]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[10]_INST_0_i_2_n_0 ),
        .I5(a[8]),
        .O(spo[10]));
  LUT5 #(
    .INIT(32'h00020006)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \spo[11]_INST_0 
       (.I0(a[7]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[11]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h0000407C48088040)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \spo[12]_INST_0 
       (.I0(a[7]),
        .I1(\spo[12]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h800E004200800008)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000282002)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \spo[13]_INST_0 
       (.I0(a[7]),
        .I1(\spo[13]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h0000100C0004002C)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0800000)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[14]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h0224010800400028)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0114400140011442)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC04C1C004081D004)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \spo[15]_INST_0 
       (.I0(a[7]),
        .I1(\spo[15]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[15]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h05003A3820005270)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200200)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[16]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[16]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h06811B328CDC0A08)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4115544154411556)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC018CC81CCC00880)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_2_n_0 ),
        .I5(a[8]),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h2000590292010888)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009C081204)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[18]_INST_0_i_2_n_0 ),
        .I5(a[8]),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h1091811155666644)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[19]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[19]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h6009E00AD6820088)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4115544154613576)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDCC048CD198DD010)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h02511C66800C0945)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1441151413146205)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h09A2C0ACAE182AC0)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[20]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[20]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h1AA0574692914664)) 
    \spo[20]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014210020)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[25]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h68D81A12A4B14AA8)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[25]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h4042001804134000)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[23]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[23]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h48D0021284914220)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000151000000000)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000400000070000)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[24]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[24]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h3A88085AA000E2E8)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0114400160011442)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC008418118038000)) 
    \spo[24]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[25]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[25]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'h48DA021284934220)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000551000000000)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[26]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'h65C99733550AA208)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4001146014402134)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1880040C001DD000)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[27]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[27]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h690CC0918A5301AB)) 
    \spo[27]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1440013401164221)) 
    \spo[27]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2E33B32C32E27E28)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[28]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[28]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'h0051501803220000)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \spo[28]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000204)) 
    \spo[28]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[29]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'h44D75BD2430C02A0)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4001166214402134)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h18C0040C001DD100)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h1400046699154808)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000616118)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2008820A2241C8A0)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[30]));
  LUT6 #(
    .INIT(64'h68C02200108542A8)) 
    \spo[31]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \spo[31]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[5]),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[3]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h4A819941001824A8)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001246014420110)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F17412800082F78)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h000200020004142C)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4004040001404034)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h24323236024A0C88)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h93A429211CEE408A)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5545555555551777)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC08C9E20C881EAB4)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0000000A01000030)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000084614118)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0910422494182260)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0000000A00820100)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1440011401164201)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22E2A1086A220088)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \spo[8]_INST_0 
       (.I0(a[7]),
        .I1(\spo[8]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[8]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h0001030300000008)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040008002)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055400040)) 
    \spo[9]_INST_0 
       (.I0(a[7]),
        .I1(\spo[10]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[9]_INST_0_i_1_n_0 ),
        .I5(a[8]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
