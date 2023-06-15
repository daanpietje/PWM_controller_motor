-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jun 13 11:00:14 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top PWM_Over_Reg_0_2 -prefix
--               PWM_Over_Reg_0_2_ PWM_Over_Reg_0_2_stub.vhdl
-- Design      : PWM_Over_Reg_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PWM_Over_Reg_0_2 is
  Port ( 
    ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    nrst : in STD_LOGIC;
    info : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end PWM_Over_Reg_0_2;

architecture stub of PWM_Over_Reg_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ld,clk,nrst,info[7:0],regout[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Reg,Vivado 2023.1";
begin
end;
