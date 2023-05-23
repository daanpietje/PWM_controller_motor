// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon May 15 16:26:59 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top PWM_Over_Reg_0_1 -prefix
//               PWM_Over_Reg_0_1_ PWM_Over_Reg_0_0_stub.v
// Design      : PWM_Over_Reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Reg,Vivado 2022.2" *)
module PWM_Over_Reg_0_1(ld, clk, rst, info, regout)
/* synthesis syn_black_box black_box_pad_pin="ld,clk,rst,info[7:0],regout[7:0]" */;
  input ld;
  input clk;
  input rst;
  input [7:0]info;
  output [7:0]regout;
endmodule
