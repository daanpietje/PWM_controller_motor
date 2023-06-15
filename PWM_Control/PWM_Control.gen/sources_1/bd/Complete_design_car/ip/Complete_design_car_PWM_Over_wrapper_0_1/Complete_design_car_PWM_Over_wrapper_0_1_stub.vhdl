-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun 15 14:16:20 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_Control.gen/sources_1/bd/Complete_design_car/ip/Complete_design_car_PWM_Over_wrapper_0_1/Complete_design_car_PWM_Over_wrapper_0_1_stub.vhdl
-- Design      : Complete_design_car_PWM_Over_wrapper_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Complete_design_car_PWM_Over_wrapper_0_1 is
  Port ( 
    PWM_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    nrst : in STD_LOGIC
  );

end Complete_design_car_PWM_Over_wrapper_0_1;

architecture stub of Complete_design_car_PWM_Over_wrapper_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PWM_out,clk,datain[7:0],nrst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PWM_Over_wrapper,Vivado 2023.1";
begin
end;
