-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Jun  7 14:03:24 2023
-- Host        : DaanAsus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_with_processor_PWM_Over_wrapper_0_2_sim_netlist.vhdl
-- Design      : design_with_processor_PWM_Over_wrapper_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over is
  port (
    PWM_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over : entity is "PWM_Over.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Comparator_0_3 is
  port (
    Dutycycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Counter : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Comparator_0_3;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Controller_0_1 is
  port (
    regld : out STD_LOGIC;
    upcounterld : out STD_LOGIC;
    dataavaibility : in STD_LOGIC;
    ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Controller_0_1;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_DataChecker_0_1 is
  port (
    Datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    senddata : out STD_LOGIC;
    clk : in STD_LOGIC;
    Ready : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_DataChecker_0_1;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Reg_0_1 is
  port (
    ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    info : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Reg_0_1;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Upcounter_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ld : in STD_LOGIC;
    Counterout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Upcounter_0_1;
  signal Controller_0_ready : STD_LOGIC;
  signal Controller_0_regld : STD_LOGIC;
  signal Controller_0_upcounterld : STD_LOGIC;
  signal DataChecker_0_senddata : STD_LOGIC;
  signal Reg_0_regout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Upcounter_0_Counterout : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of Comparator_0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of Comparator_0 : label is "Comparator,Vivado 2023.1";
  attribute syn_black_box of Controller_0 : label is "TRUE";
  attribute x_core_info of Controller_0 : label is "Controller,Vivado 2023.1";
  attribute syn_black_box of DataChecker_0 : label is "TRUE";
  attribute x_core_info of DataChecker_0 : label is "DataChecker,Vivado 2023.1";
  attribute syn_black_box of Reg_0 : label is "TRUE";
  attribute x_core_info of Reg_0 : label is "Reg,Vivado 2023.1";
  attribute syn_black_box of Upcounter_0 : label is "TRUE";
  attribute x_core_info of Upcounter_0 : label is "Upcounter,Vivado 2023.1";
begin
Comparator_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Comparator_0_3
     port map (
      Counter(7 downto 0) => Upcounter_0_Counterout(7 downto 0),
      Dutycycle(7 downto 0) => Reg_0_regout(7 downto 0),
      PWM => PWM_out
    );
Controller_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Controller_0_1
     port map (
      clk => clk,
      dataavaibility => DataChecker_0_senddata,
      ready => Controller_0_ready,
      regld => Controller_0_regld,
      rst => rst,
      upcounterld => Controller_0_upcounterld
    );
DataChecker_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_DataChecker_0_1
     port map (
      Datain(7 downto 0) => datain(7 downto 0),
      Ready => Controller_0_ready,
      clk => clk,
      rst => rst,
      senddata => DataChecker_0_senddata
    );
Reg_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Reg_0_1
     port map (
      clk => clk,
      info(7) => rst,
      info(6) => rst,
      info(5) => rst,
      info(4) => rst,
      info(3) => rst,
      info(2) => rst,
      info(1) => rst,
      info(0) => rst,
      ld => Controller_0_regld,
      regout(7 downto 0) => Reg_0_regout(7 downto 0),
      rst => datain(0)
    );
Upcounter_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Upcounter_0_1
     port map (
      Counterout(7 downto 0) => Upcounter_0_Counterout(7 downto 0),
      clk => clk,
      ld => Controller_0_upcounterld,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_wrapper is
  port (
    PWM_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_wrapper is
  attribute hw_handoff : string;
  attribute hw_handoff of PWM_Over_i : label is "PWM_Over.hwdef";
begin
PWM_Over_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over
     port map (
      PWM_out => PWM_out,
      clk => clk,
      datain(7 downto 0) => datain(7 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    PWM_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_with_processor_PWM_Over_wrapper_0_2,PWM_Over_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PWM_Over_wrapper,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_with_processor_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_wrapper
     port map (
      PWM_out => PWM_out,
      clk => clk,
      datain(7 downto 0) => datain(7 downto 0),
      rst => rst
    );
end STRUCTURE;