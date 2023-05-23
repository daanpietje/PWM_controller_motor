// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon May 22 13:11:03 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top PWM_Over_DataChecker_0_1 -prefix
//               PWM_Over_DataChecker_0_1_ PWM_Over_DataChecker_0_0_stub.v
// Design      : PWM_Over_DataChecker_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DataChecker,Vivado 2022.2" *)
module PWM_Over_DataChecker_0_1(Datain, senddata, clk, Ready, rst)
/* synthesis syn_black_box black_box_pad_pin="Datain[7:0],senddata,clk,Ready,rst" */;
  input [7:0]Datain;
  output senddata;
  input clk;
  input Ready;
  input rst;
endmodule
