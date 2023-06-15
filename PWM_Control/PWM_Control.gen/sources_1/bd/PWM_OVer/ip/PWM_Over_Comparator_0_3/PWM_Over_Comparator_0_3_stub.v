// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 15 13:41:18 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_Comparator_0_3/PWM_Over_Comparator_0_3_stub.v
// Design      : PWM_Over_Comparator_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Comparator,Vivado 2023.1" *)
module PWM_Over_Comparator_0_3(Dutycycle, Counter, ld, PWM)
/* synthesis syn_black_box black_box_pad_pin="Dutycycle[7:0],Counter[7:0],ld,PWM" */;
  input [7:0]Dutycycle;
  input [7:0]Counter;
  input ld;
  output PWM;
endmodule
