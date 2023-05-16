-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 15 16:26:59 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Reg_0_0_sim_netlist.vhdl
-- Design      : PWM_Over_Reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Reg is
  port (
    regout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ld : in STD_LOGIC;
    info : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Reg is
begin
\regout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(0),
      Q => regout(0)
    );
\regout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(1),
      Q => regout(1)
    );
\regout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(2),
      Q => regout(2)
    );
\regout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(3),
      Q => regout(3)
    );
\regout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(4),
      Q => regout(4)
    );
\regout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(5),
      Q => regout(5)
    );
\regout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(6),
      Q => regout(6)
    );
\regout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => info(7),
      Q => regout(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    info : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PWM_Over_Reg_0_0,Reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reg,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Reg
     port map (
      clk => clk,
      info(7 downto 0) => info(7 downto 0),
      ld => ld,
      regout(7 downto 0) => regout(7 downto 0),
      rst => rst
    );
end STRUCTURE;
