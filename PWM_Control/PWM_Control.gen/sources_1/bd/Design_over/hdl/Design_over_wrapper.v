//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Mar 22 14:47:44 2023
//Host        : DaanAsus running 64-bit major release  (build 9200)
//Command     : generate_target Design_over_wrapper.bd
//Design      : Design_over_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Design_over_wrapper
   (Counter,
    PWM_Out,
    reset_rtl,
    sys_clock);
  input [3:0]Counter;
  output PWM_Out;
  input reset_rtl;
  input sys_clock;

  wire [3:0]Counter;
  wire PWM_Out;
  wire reset_rtl;
  wire sys_clock;

  Design_over Design_over_i
       (.Counter(Counter),
        .PWM_Out(PWM_Out),
        .reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
