// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jun  7 14:03:24 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_with_processor_PWM_Over_wrapper_1_0 -prefix
//               design_with_processor_PWM_Over_wrapper_1_0_ design_with_processor_PWM_Over_wrapper_0_2_stub.v
// Design      : design_with_processor_PWM_Over_wrapper_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PWM_Over_wrapper,Vivado 2023.1" *)
module design_with_processor_PWM_Over_wrapper_1_0(PWM_out, clk, datain, rst)
/* synthesis syn_black_box black_box_pad_pin="PWM_out,clk,datain[7:0],rst" */;
  output PWM_out;
  input clk;
  input [7:0]datain;
  input rst;
endmodule