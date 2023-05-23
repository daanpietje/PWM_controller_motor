-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 22 13:11:03 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top PWM_Over_Controller_0_1 -prefix
--               PWM_Over_Controller_0_1_ PWM_Over_Controller_0_0_stub.vhdl
-- Design      : PWM_Over_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PWM_Over_Controller_0_1 is
  Port ( 
    regld : out STD_LOGIC;
    upcounterld : out STD_LOGIC;
    dataavaibility : in STD_LOGIC;
    ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end PWM_Over_Controller_0_1;

architecture stub of PWM_Over_Controller_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "regld,upcounterld,dataavaibility,ready,clk,rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Controller,Vivado 2022.2";
begin
end;
