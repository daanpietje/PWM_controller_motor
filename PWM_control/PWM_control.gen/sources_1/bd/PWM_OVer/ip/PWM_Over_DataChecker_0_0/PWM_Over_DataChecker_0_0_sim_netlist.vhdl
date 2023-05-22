-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 22 13:11:03 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_DataChecker_0_0/PWM_Over_DataChecker_0_0_sim_netlist.vhdl
-- Design      : PWM_Over_DataChecker_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_Over_DataChecker_0_0_DataChecker is
  port (
    senddata : out STD_LOGIC;
    Ready : in STD_LOGIC;
    rst : in STD_LOGIC;
    Datain : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PWM_Over_DataChecker_0_0_DataChecker : entity is "DataChecker";
end PWM_Over_DataChecker_0_0_DataChecker;

architecture STRUCTURE of PWM_Over_DataChecker_0_0_DataChecker is
  signal lastsenddata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lastsenddata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \lastsenddata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal senddata_reg_i_1_n_0 : STD_LOGIC;
  signal senddata_reg_i_2_n_0 : STD_LOGIC;
  signal senddata_reg_i_3_n_0 : STD_LOGIC;
  signal senddata_reg_i_4_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \lastsenddata_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \lastsenddata_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of senddata_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of senddata_reg : label is "VCC:GE";
begin
\lastsenddata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[0]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(0)
    );
\lastsenddata_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(0),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[0]_i_1_n_0\
    );
\lastsenddata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[1]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(1)
    );
\lastsenddata_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(1),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[1]_i_1_n_0\
    );
\lastsenddata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[2]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(2)
    );
\lastsenddata_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(2),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[2]_i_1_n_0\
    );
\lastsenddata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[3]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(3)
    );
\lastsenddata_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(3),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[3]_i_1_n_0\
    );
\lastsenddata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[4]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(4)
    );
\lastsenddata_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(4),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[4]_i_1_n_0\
    );
\lastsenddata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[5]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(5)
    );
\lastsenddata_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(5),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[5]_i_1_n_0\
    );
\lastsenddata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[6]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(6)
    );
\lastsenddata_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(6),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[6]_i_1_n_0\
    );
\lastsenddata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lastsenddata_reg[7]_i_1_n_0\,
      G => \lastsenddata_reg[7]_i_2_n_0\,
      GE => '1',
      Q => lastsenddata(7)
    );
\lastsenddata_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => Ready,
      I1 => Datain(7),
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => senddata_reg_i_3_n_0,
      I4 => senddata_reg_i_4_n_0,
      O => \lastsenddata_reg[7]_i_1_n_0\
    );
\lastsenddata_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => senddata_reg_i_4_n_0,
      I1 => senddata_reg_i_3_n_0,
      I2 => \lastsenddata_reg[7]_i_3_n_0\,
      I3 => Ready,
      I4 => rst,
      O => \lastsenddata_reg[7]_i_2_n_0\
    );
\lastsenddata_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => lastsenddata(6),
      I1 => Datain(6),
      I2 => lastsenddata(7),
      I3 => Datain(7),
      O => \lastsenddata_reg[7]_i_3_n_0\
    );
senddata_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => senddata_reg_i_2_n_0,
      D => senddata_reg_i_1_n_0,
      G => senddata_reg_i_1_n_0,
      GE => '1',
      Q => senddata
    );
senddata_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => Datain(7),
      I1 => lastsenddata(7),
      I2 => Datain(6),
      I3 => lastsenddata(6),
      I4 => senddata_reg_i_3_n_0,
      I5 => senddata_reg_i_4_n_0,
      O => senddata_reg_i_1_n_0
    );
senddata_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Ready,
      O => senddata_reg_i_2_n_0
    );
senddata_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => lastsenddata(3),
      I1 => Datain(3),
      I2 => Datain(5),
      I3 => lastsenddata(5),
      I4 => Datain(4),
      I5 => lastsenddata(4),
      O => senddata_reg_i_3_n_0
    );
senddata_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => lastsenddata(0),
      I1 => Datain(0),
      I2 => Datain(2),
      I3 => lastsenddata(2),
      I4 => Datain(1),
      I5 => lastsenddata(1),
      O => senddata_reg_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_Over_DataChecker_0_0 is
  port (
    Datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    senddata : out STD_LOGIC;
    clk : in STD_LOGIC;
    Ready : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PWM_Over_DataChecker_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PWM_Over_DataChecker_0_0 : entity is "PWM_Over_DataChecker_0_0,DataChecker,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PWM_Over_DataChecker_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PWM_Over_DataChecker_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PWM_Over_DataChecker_0_0 : entity is "DataChecker,Vivado 2022.2";
end PWM_Over_DataChecker_0_0;

architecture STRUCTURE of PWM_Over_DataChecker_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.PWM_Over_DataChecker_0_0_DataChecker
     port map (
      Datain(7 downto 0) => Datain(7 downto 0),
      Ready => Ready,
      rst => rst,
      senddata => senddata
    );
end STRUCTURE;
