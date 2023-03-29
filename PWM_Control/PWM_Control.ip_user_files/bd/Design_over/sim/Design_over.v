//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Mar 22 14:47:44 2023
//Host        : DaanAsus running 64-bit major release  (build 9200)
//Command     : generate_target Design_over.bd
//Design      : Design_over
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Design_over,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Design_over,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Design_over.hwdef" *) 
module Design_over
   (Counter,
    PWM_Out,
    reset_rtl,
    sys_clock);
  input [3:0]Counter;
  output PWM_Out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN Design_over_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire Comparator_0_PWM;
  wire [3:0]Counter_1;
  wire [3:0]Upcounter_0_Counterout;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire reset_rtl_1;
  wire [0:0]rst_clk_wiz_0_100M_peripheral_aresetn;
  wire sys_clock_1;

  assign Counter_1 = Counter[3:0];
  assign PWM_Out = Comparator_0_PWM;
  assign reset_rtl_1 = reset_rtl;
  assign sys_clock_1 = sys_clock;
  Design_over_Comparator_0_0 Comparator_0
       (.Counter(Counter_1),
        .Dutycycle(Upcounter_0_Counterout),
        .PWM(Comparator_0_PWM));
  Design_over_Upcounter_0_0 Upcounter_0
       (.Counterout(Upcounter_0_Counterout),
        .clk(clk_wiz_0_clk_out1),
        .rst(rst_clk_wiz_0_100M_peripheral_aresetn));
  Design_over_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(reset_rtl_1));
  Design_over_rst_clk_wiz_0_100M_0 rst_clk_wiz_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
endmodule
