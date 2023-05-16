-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 15 16:26:59 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_Comparator_0_2/PWM_Over_Comparator_0_2_sim_netlist.vhdl
-- Design      : PWM_Over_Comparator_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_Over_Comparator_0_2_Comparator is
  port (
    PWM : out STD_LOGIC;
    Dutycycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Counter : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PWM_Over_Comparator_0_2_Comparator : entity is "Comparator";
end PWM_Over_Comparator_0_2_Comparator;

architecture STRUCTURE of PWM_Over_Comparator_0_2_Comparator is
  signal PWM_INST_0_i_1_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_2_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_3_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_4_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_5_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_6_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_7_n_0 : STD_LOGIC;
  signal PWM_INST_0_i_8_n_0 : STD_LOGIC;
  signal PWM_INST_0_n_1 : STD_LOGIC;
  signal PWM_INST_0_n_2 : STD_LOGIC;
  signal PWM_INST_0_n_3 : STD_LOGIC;
  signal NLW_PWM_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of PWM_INST_0 : label is 11;
begin
PWM_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PWM,
      CO(2) => PWM_INST_0_n_1,
      CO(1) => PWM_INST_0_n_2,
      CO(0) => PWM_INST_0_n_3,
      CYINIT => '0',
      DI(3) => PWM_INST_0_i_1_n_0,
      DI(2) => PWM_INST_0_i_2_n_0,
      DI(1) => PWM_INST_0_i_3_n_0,
      DI(0) => PWM_INST_0_i_4_n_0,
      O(3 downto 0) => NLW_PWM_INST_0_O_UNCONNECTED(3 downto 0),
      S(3) => PWM_INST_0_i_5_n_0,
      S(2) => PWM_INST_0_i_6_n_0,
      S(1) => PWM_INST_0_i_7_n_0,
      S(0) => PWM_INST_0_i_8_n_0
    );
PWM_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(6),
      I1 => Counter(6),
      I2 => Counter(7),
      I3 => Dutycycle(7),
      O => PWM_INST_0_i_1_n_0
    );
PWM_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(4),
      I1 => Counter(4),
      I2 => Counter(5),
      I3 => Dutycycle(5),
      O => PWM_INST_0_i_2_n_0
    );
PWM_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(2),
      I1 => Counter(2),
      I2 => Counter(3),
      I3 => Dutycycle(3),
      O => PWM_INST_0_i_3_n_0
    );
PWM_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(0),
      I1 => Counter(0),
      I2 => Counter(1),
      I3 => Dutycycle(1),
      O => PWM_INST_0_i_4_n_0
    );
PWM_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(6),
      I1 => Counter(6),
      I2 => Dutycycle(7),
      I3 => Counter(7),
      O => PWM_INST_0_i_5_n_0
    );
PWM_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(4),
      I1 => Counter(4),
      I2 => Dutycycle(5),
      I3 => Counter(5),
      O => PWM_INST_0_i_6_n_0
    );
PWM_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(2),
      I1 => Counter(2),
      I2 => Dutycycle(3),
      I3 => Counter(3),
      O => PWM_INST_0_i_7_n_0
    );
PWM_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(0),
      I1 => Counter(0),
      I2 => Dutycycle(1),
      I3 => Counter(1),
      O => PWM_INST_0_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_Over_Comparator_0_2 is
  port (
    Dutycycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Counter : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PWM_Over_Comparator_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PWM_Over_Comparator_0_2 : entity is "PWM_Over_Comparator_0_2,Comparator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PWM_Over_Comparator_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PWM_Over_Comparator_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PWM_Over_Comparator_0_2 : entity is "Comparator,Vivado 2022.2";
end PWM_Over_Comparator_0_2;

architecture STRUCTURE of PWM_Over_Comparator_0_2 is
begin
U0: entity work.PWM_Over_Comparator_0_2_Comparator
     port map (
      Counter(7 downto 0) => Counter(7 downto 0),
      Dutycycle(7 downto 0) => Dutycycle(7 downto 0),
      PWM => PWM
    );
end STRUCTURE;
