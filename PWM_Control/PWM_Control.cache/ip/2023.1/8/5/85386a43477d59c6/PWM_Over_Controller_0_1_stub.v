// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 15 13:57:34 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Controller_0_1_stub.v
// Design      : PWM_Over_Controller_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Controller,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(regld, upcounterld, dataavaibility, 
  comparatorld, ready, clk, nrst)
/* synthesis syn_black_box black_box_pad_pin="regld,upcounterld,dataavaibility,comparatorld,ready,nrst" */
/* synthesis syn_force_seq_prim="clk" */;
  output regld;
  output upcounterld;
  input dataavaibility;
  output comparatorld;
  output ready;
  input clk /* synthesis syn_isclock = 1 */;
  input nrst;
endmodule
