-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 15 16:26:59 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_Upcounter_0_0_1/PWM_Over_Upcounter_0_0_stub.vhdl
-- Design      : PWM_Over_Upcounter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PWM_Over_Upcounter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ld : in STD_LOGIC;
    Counterout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end PWM_Over_Upcounter_0_0;

architecture stub of PWM_Over_Upcounter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,ld,Counterout[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Upcounter,Vivado 2022.2";
begin
end;