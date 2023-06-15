-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jun 13 10:52:07 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Upcounter_0_1_sim_netlist.vhdl
-- Design      : PWM_Over_Upcounter_0_1
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
    Counterout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    nrst : in STD_LOGIC;
    ld : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter is
  signal \^counterout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tempcounter[6]_i_2_n_0\ : STD_LOGIC;
  signal \tempcounter[7]_i_2_n_0\ : STD_LOGIC;
  signal \tempcounter[7]_i_3_n_0\ : STD_LOGIC;
  signal \tempcounter[7]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tempcounter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tempcounter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tempcounter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tempcounter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tempcounter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tempcounter[6]_i_2\ : label is "soft_lutpair1";
begin
  Counterout(7 downto 0) <= \^counterout\(7 downto 0);
\tempcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counterout\(0),
      O => p_0_in(0)
    );
\tempcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counterout\(0),
      I1 => \^counterout\(1),
      O => p_0_in(1)
    );
\tempcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^counterout\(2),
      I1 => \^counterout\(0),
      I2 => \^counterout\(1),
      O => p_0_in(2)
    );
\tempcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^counterout\(3),
      I1 => \^counterout\(0),
      I2 => \^counterout\(1),
      I3 => \^counterout\(2),
      O => p_0_in(3)
    );
\tempcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^counterout\(4),
      I1 => \^counterout\(2),
      I2 => \^counterout\(1),
      I3 => \^counterout\(0),
      I4 => \^counterout\(3),
      O => p_0_in(4)
    );
\tempcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^counterout\(5),
      I1 => \^counterout\(3),
      I2 => \^counterout\(0),
      I3 => \^counterout\(1),
      I4 => \^counterout\(2),
      I5 => \^counterout\(4),
      O => p_0_in(5)
    );
\tempcounter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^counterout\(6),
      I1 => \^counterout\(4),
      I2 => \^counterout\(2),
      I3 => \tempcounter[6]_i_2_n_0\,
      I4 => \^counterout\(3),
      I5 => \^counterout\(5),
      O => p_0_in(6)
    );
\tempcounter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counterout\(1),
      I1 => \^counterout\(0),
      O => \tempcounter[6]_i_2_n_0\
    );
\tempcounter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8CC"
    )
        port map (
      I0 => \tempcounter[7]_i_3_n_0\,
      I1 => \^counterout\(7),
      I2 => \tempcounter[7]_i_4_n_0\,
      I3 => \^counterout\(6),
      O => p_0_in(7)
    );
\tempcounter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => nrst,
      I1 => ld,
      O => \tempcounter[7]_i_2_n_0\
    );
\tempcounter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^counterout\(4),
      I1 => \^counterout\(2),
      I2 => \^counterout\(0),
      I3 => \^counterout\(1),
      I4 => \^counterout\(3),
      I5 => \^counterout\(5),
      O => \tempcounter[7]_i_3_n_0\
    );
\tempcounter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counterout\(4),
      I1 => \^counterout\(2),
      I2 => \^counterout\(1),
      I3 => \^counterout\(0),
      I4 => \^counterout\(3),
      I5 => \^counterout\(5),
      O => \tempcounter[7]_i_4_n_0\
    );
\tempcounter_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(0)
    );
\tempcounter_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(1)
    );
\tempcounter_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(2)
    );
\tempcounter_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(3)
    );
\tempcounter_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(4)
    );
\tempcounter_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(5)
    );
\tempcounter_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(6)
    );
\tempcounter_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      PRE => \tempcounter[7]_i_2_n_0\,
      Q => \^counterout\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    nrst : in STD_LOGIC;
    ld : in STD_LOGIC;
    Counterout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PWM_Over_Upcounter_0_1,Upcounter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Upcounter,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter
     port map (
      Counterout(7 downto 0) => Counterout(7 downto 0),
      clk => clk,
      ld => ld,
      nrst => nrst
    );
end STRUCTURE;
