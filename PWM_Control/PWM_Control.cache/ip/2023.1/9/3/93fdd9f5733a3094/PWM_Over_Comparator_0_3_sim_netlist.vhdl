-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun 15 11:55:04 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Comparator_0_3_sim_netlist.vhdl
-- Design      : PWM_Over_Comparator_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator is
  port (
    PWM : out STD_LOGIC;
    Dutycycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Counter : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator is
  signal pwm_temp1 : STD_LOGIC;
  signal pwm_temp1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_temp1_carry_n_1 : STD_LOGIC;
  signal pwm_temp1_carry_n_2 : STD_LOGIC;
  signal pwm_temp1_carry_n_3 : STD_LOGIC;
  signal NLW_pwm_temp1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_temp1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_temp1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
pwm_temp1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_temp1,
      CO(2) => pwm_temp1_carry_n_1,
      CO(1) => pwm_temp1_carry_n_2,
      CO(0) => pwm_temp1_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_temp1_carry_i_1_n_0,
      DI(2) => pwm_temp1_carry_i_2_n_0,
      DI(1) => pwm_temp1_carry_i_3_n_0,
      DI(0) => pwm_temp1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_temp1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_temp1_carry_i_5_n_0,
      S(2) => pwm_temp1_carry_i_6_n_0,
      S(1) => pwm_temp1_carry_i_7_n_0,
      S(0) => pwm_temp1_carry_i_8_n_0
    );
\pwm_temp1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_temp1,
      CO(3 downto 0) => \NLW_pwm_temp1_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pwm_temp1_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => PWM,
      S(3 downto 0) => B"0001"
    );
pwm_temp1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(6),
      I1 => Counter(6),
      I2 => Counter(7),
      I3 => Dutycycle(7),
      O => pwm_temp1_carry_i_1_n_0
    );
pwm_temp1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(4),
      I1 => Counter(4),
      I2 => Counter(5),
      I3 => Dutycycle(5),
      O => pwm_temp1_carry_i_2_n_0
    );
pwm_temp1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(2),
      I1 => Counter(2),
      I2 => Counter(3),
      I3 => Dutycycle(3),
      O => pwm_temp1_carry_i_3_n_0
    );
pwm_temp1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Dutycycle(0),
      I1 => Counter(0),
      I2 => Counter(1),
      I3 => Dutycycle(1),
      O => pwm_temp1_carry_i_4_n_0
    );
pwm_temp1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(6),
      I1 => Counter(6),
      I2 => Dutycycle(7),
      I3 => Counter(7),
      O => pwm_temp1_carry_i_5_n_0
    );
pwm_temp1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(4),
      I1 => Counter(4),
      I2 => Dutycycle(5),
      I3 => Counter(5),
      O => pwm_temp1_carry_i_6_n_0
    );
pwm_temp1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(2),
      I1 => Counter(2),
      I2 => Dutycycle(3),
      I3 => Counter(3),
      O => pwm_temp1_carry_i_7_n_0
    );
pwm_temp1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Dutycycle(0),
      I1 => Counter(0),
      I2 => Dutycycle(1),
      I3 => Counter(1),
      O => pwm_temp1_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Dutycycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Counter : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PWM_Over_Comparator_0_3,Comparator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Comparator,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator
     port map (
      Counter(7 downto 0) => Counter(7 downto 0),
      Dutycycle(7 downto 0) => Dutycycle(7 downto 0),
      PWM => PWM
    );
end STRUCTURE;
