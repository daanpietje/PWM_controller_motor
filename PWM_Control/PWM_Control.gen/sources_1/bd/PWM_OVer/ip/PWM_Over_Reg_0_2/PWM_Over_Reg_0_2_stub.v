// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 13 11:00:14 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top PWM_Over_Reg_0_2 -prefix
//               PWM_Over_Reg_0_2_ PWM_Over_Reg_0_2_stub.v
// Design      : PWM_Over_Reg_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Reg,Vivado 2023.1" *)
module PWM_Over_Reg_0_2(ld, clk, nrst, info, regout)
/* synthesis syn_black_box black_box_pad_pin="ld,nrst,info[7:0],regout[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input ld;
  input clk /* synthesis syn_isclock = 1 */;
  input nrst;
  input [7:0]info;
  output [7:0]regout;
endmodule
