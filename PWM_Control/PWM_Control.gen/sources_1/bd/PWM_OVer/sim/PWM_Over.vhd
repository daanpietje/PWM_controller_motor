--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Wed Jun  7 13:40:10 2023
--Host        : DaanAsus running 64-bit major release  (build 9200)
--Command     : generate_target PWM_Over.bd
--Design      : PWM_Over
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PWM_Over is
  port (
    PWM_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of PWM_Over : entity is "PWM_Over,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PWM_Over,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=7,da_clkrst_cnt=6,da_ps7_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of PWM_Over : entity is "PWM_Over.hwdef";
end PWM_Over;

architecture STRUCTURE of PWM_Over is
  component PWM_Over_Controller_0_1 is
  port (
    regld : out STD_LOGIC;
    upcounterld : out STD_LOGIC;
    dataavaibility : in STD_LOGIC;
    ready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component PWM_Over_Controller_0_1;
  component PWM_Over_Comparator_0_3 is
  port (
    Dutycycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Counter : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM : out STD_LOGIC
  );
  end component PWM_Over_Comparator_0_3;
  component PWM_Over_DataChecker_0_1 is
  port (
    Datain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    senddata : out STD_LOGIC;
    clk : in STD_LOGIC;
    Ready : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component PWM_Over_DataChecker_0_1;
  component PWM_Over_Upcounter_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ld : in STD_LOGIC;
    Counterout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component PWM_Over_Upcounter_0_1;
  component PWM_Over_Reg_0_1 is
  port (
    ld : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    info : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component PWM_Over_Reg_0_1;
  signal Comparator_0_PWM : STD_LOGIC;
  signal Controller_0_ready : STD_LOGIC;
  signal Controller_0_regld : STD_LOGIC;
  signal Controller_0_upcounterld : STD_LOGIC;
  signal DataChecker_0_senddata : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Reg_0_regout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Upcounter_0_Counterout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal datain_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_1 : STD_LOGIC;
begin
  Net <= clk;
  PWM_out <= Comparator_0_PWM;
  datain_1(7 downto 0) <= datain(7 downto 0);
  rst_1 <= rst;
Comparator_0: component PWM_Over_Comparator_0_3
     port map (
      Counter(7 downto 0) => Upcounter_0_Counterout(7 downto 0),
      Dutycycle(7 downto 0) => Reg_0_regout(7 downto 0),
      PWM => Comparator_0_PWM
    );
Controller_0: component PWM_Over_Controller_0_1
     port map (
      clk => Net,
      dataavaibility => DataChecker_0_senddata,
      ready => Controller_0_ready,
      regld => Controller_0_regld,
      rst => rst_1,
      upcounterld => Controller_0_upcounterld
    );
DataChecker_0: component PWM_Over_DataChecker_0_1
     port map (
      Datain(7 downto 0) => datain_1(7 downto 0),
      Ready => Controller_0_ready,
      clk => Net,
      rst => rst_1,
      senddata => DataChecker_0_senddata
    );
Reg_0: component PWM_Over_Reg_0_1
     port map (
      clk => Net,
      info(7) => rst_1,
      info(6) => rst_1,
      info(5) => rst_1,
      info(4) => rst_1,
      info(3) => rst_1,
      info(2) => rst_1,
      info(1) => rst_1,
      info(0) => rst_1,
      ld => Controller_0_regld,
      regout(7 downto 0) => Reg_0_regout(7 downto 0),
      rst => datain_1(0)
    );
Upcounter_0: component PWM_Over_Upcounter_0_1
     port map (
      Counterout(7 downto 0) => Upcounter_0_Counterout(7 downto 0),
      clk => Net,
      ld => Controller_0_upcounterld,
      rst => rst_1
    );
end STRUCTURE;
