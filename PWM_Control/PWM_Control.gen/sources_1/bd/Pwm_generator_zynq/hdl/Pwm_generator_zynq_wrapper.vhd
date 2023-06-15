--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Tue Jun 13 14:47:58 2023
--Host        : DaanAsus running 64-bit major release  (build 9200)
--Command     : generate_target Pwm_generator_zynq_wrapper.bd
--Design      : Pwm_generator_zynq_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pwm_generator_zynq_wrapper is
  port (
    PWM_out_0 : out STD_LOGIC;
    PWM_out_1 : out STD_LOGIC
  );
end Pwm_generator_zynq_wrapper;

architecture STRUCTURE of Pwm_generator_zynq_wrapper is
  component Pwm_generator_zynq is
  port (
    PWM_out_1 : out STD_LOGIC;
    PWM_out_0 : out STD_LOGIC
  );
  end component Pwm_generator_zynq;
begin
Pwm_generator_zynq_i: component Pwm_generator_zynq
     port map (
      PWM_out_0 => PWM_out_0,
      PWM_out_1 => PWM_out_1
    );
end STRUCTURE;
