-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 15 15:28:38 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Upcounter_0_0_sim_netlist.vhdl
-- Design      : PWM_Over_Upcounter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter is
  port (
    Counterout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter is
  signal \^counterout\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \tempcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \tempcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \tempcounter[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tempcounter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tempcounter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tempcounter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tempcounter[3]_i_1\ : label is "soft_lutpair0";
begin
  Counterout(3 downto 0) <= \^counterout\(3 downto 0);
\tempcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counterout\(0),
      O => \tempcounter[0]_i_1_n_0\
    );
\tempcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counterout\(0),
      I1 => \^counterout\(1),
      O => \tempcounter[1]_i_1_n_0\
    );
\tempcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^counterout\(2),
      I1 => \^counterout\(0),
      I2 => \^counterout\(1),
      O => \tempcounter[2]_i_1_n_0\
    );
\tempcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^counterout\(3),
      I1 => \^counterout\(2),
      I2 => \^counterout\(0),
      I3 => \^counterout\(1),
      O => \tempcounter[3]_i_1_n_0\
    );
\tempcounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => \tempcounter[0]_i_1_n_0\,
      Q => \^counterout\(0)
    );
\tempcounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => \tempcounter[1]_i_1_n_0\,
      Q => \^counterout\(1)
    );
\tempcounter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => \tempcounter[2]_i_1_n_0\,
      Q => \^counterout\(2)
    );
\tempcounter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ld,
      CLR => rst,
      D => \tempcounter[3]_i_1_n_0\,
      Q => \^counterout\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ld : in STD_LOGIC;
    Counterout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PWM_Over_Upcounter_0_0,Upcounter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Upcounter,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter
     port map (
      Counterout(3 downto 0) => Counterout(3 downto 0),
      clk => clk,
      ld => ld,
      rst => rst
    );
end STRUCTURE;
