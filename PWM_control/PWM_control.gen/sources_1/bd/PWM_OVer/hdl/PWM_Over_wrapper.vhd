--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Mon May 22 13:03:26 2023
--Host        : DaanAsus running 64-bit major release  (build 9200)
--Command     : generate_target PWM_Over_wrapper.bd
--Design      : PWM_Over_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_Over_wrapper is
  port (
    Pwm_signal : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
end PWM_Over_wrapper;

architecture STRUCTURE of PWM_Over_wrapper is
  component PWM_Over is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Pwm_signal : out STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component PWM_Over;
begin
PWM_Over_i: component PWM_Over
     port map (
      Pwm_signal => Pwm_signal,
      clk => clk,
      datain(7 downto 0) => datain(7 downto 0),
      rst => rst
    );
end STRUCTURE;