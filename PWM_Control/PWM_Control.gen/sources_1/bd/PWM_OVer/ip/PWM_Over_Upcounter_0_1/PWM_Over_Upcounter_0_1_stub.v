// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 13 10:52:07 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_Upcounter_0_1/PWM_Over_Upcounter_0_1_stub.v
// Design      : PWM_Over_Upcounter_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Upcounter,Vivado 2023.1" *)
module PWM_Over_Upcounter_0_1(clk, nrst, ld, Counterout)
/* synthesis syn_black_box black_box_pad_pin="nrst,ld,Counterout[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input nrst;
  input ld;
  output [7:0]Counterout;
endmodule
