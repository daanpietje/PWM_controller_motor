-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun 10 14:49:21 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top Pwm_generator_zynq_PWM_Over_wrapper_1_0 -prefix
--               Pwm_generator_zynq_PWM_Over_wrapper_1_0_ Pwm_generator_zynq_PWM_Over_wrapper_0_0_stub.vhdl
-- Design      : Pwm_generator_zynq_PWM_Over_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Pwm_generator_zynq_PWM_Over_wrapper_1_0 is
  Port ( 
    PWM_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );

end Pwm_generator_zynq_PWM_Over_wrapper_1_0;

architecture stub of Pwm_generator_zynq_PWM_Over_wrapper_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PWM_out,clk,datain[7:0],rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PWM_Over_wrapper,Vivado 2023.1";
begin
end;