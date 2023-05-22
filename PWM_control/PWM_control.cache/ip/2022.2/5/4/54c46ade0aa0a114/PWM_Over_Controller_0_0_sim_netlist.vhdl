-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon May 22 13:11:03 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Controller_0_0_sim_netlist.vhdl
-- Design      : PWM_Over_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Controller is
  port (
    regld : out STD_LOGIC;
    upcounterld : out STD_LOGIC;
    ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    dataavaibility : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Controller is
  signal \FSM_onehot_presentstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_presentstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_presentstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_presentstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_presentstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_presentstate_reg_n_0_[3]\ : STD_LOGIC;
  signal \^regld\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_presentstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_presentstate[3]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_presentstate_reg[0]\ : label is "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_presentstate_reg[1]\ : label is "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_presentstate_reg[2]\ : label is "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_presentstate_reg[3]\ : label is "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010";
  attribute SOFT_HLUTNM of ready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of upcounterld_INST_0 : label is "soft_lutpair1";
begin
  regld <= \^regld\;
\FSM_onehot_presentstate[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_presentstate_reg_n_0_[0]\,
      I1 => dataavaibility,
      O => \FSM_onehot_presentstate[0]_i_1_n_0\
    );
\FSM_onehot_presentstate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_presentstate_reg_n_0_[0]\,
      I1 => dataavaibility,
      I2 => \FSM_onehot_presentstate_reg_n_0_[3]\,
      O => \FSM_onehot_presentstate[1]_i_1_n_0\
    );
\FSM_onehot_presentstate[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_presentstate_reg_n_0_[2]\,
      I1 => dataavaibility,
      I2 => \FSM_onehot_presentstate_reg_n_0_[3]\,
      O => \FSM_onehot_presentstate[3]_i_1_n_0\
    );
\FSM_onehot_presentstate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_presentstate[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_presentstate_reg_n_0_[0]\
    );
\FSM_onehot_presentstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_presentstate[1]_i_1_n_0\,
      Q => \^regld\
    );
\FSM_onehot_presentstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \^regld\,
      Q => \FSM_onehot_presentstate_reg_n_0_[2]\
    );
\FSM_onehot_presentstate_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_presentstate[3]_i_1_n_0\,
      Q => \FSM_onehot_presentstate_reg_n_0_[3]\
    );
ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_presentstate_reg_n_0_[0]\,
      I1 => \FSM_onehot_presentstate_reg_n_0_[3]\,
      O => ready
    );
upcounterld_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_presentstate_reg_n_0_[2]\,
      I1 => \FSM_onehot_presentstate_reg_n_0_[3]\,
      O => upcounterld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    regld : out STD_LOGIC;
    upcounterld : out STD_LOGIC;
    dataavaibility : in STD_LOGIC;
    ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PWM_Over_Controller_0_0,Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Controller,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Controller
     port map (
      clk => clk,
      dataavaibility => dataavaibility,
      ready => ready,
      regld => regld,
      rst => rst,
      upcounterld => upcounterld
    );
end STRUCTURE;
