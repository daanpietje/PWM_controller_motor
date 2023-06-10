// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun 10 14:38:43 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Pwm_generator_zynq_PWM_Over_wrapper_1_0_sim_netlist.v
// Design      : Pwm_generator_zynq_PWM_Over_wrapper_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "PWM_Over.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over
   (PWM_out,
    clk,
    datain,
    rst);
  output PWM_out;
  input clk;
  input [7:0]datain;
  input rst;

  wire Controller_0_ready;
  wire Controller_0_regld;
  wire Controller_0_upcounterld;
  wire DataChecker_0_senddata;
  wire PWM_out;
  wire [7:0]Reg_0_regout;
  wire [7:0]Upcounter_0_Counterout;
  wire clk;
  wire [7:0]datain;
  wire rst;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Comparator,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Comparator_0_3 Comparator_0
       (.Counter(Upcounter_0_Counterout),
        .Dutycycle(Reg_0_regout),
        .PWM(PWM_out));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Controller,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Controller_0_1 Controller_0
       (.clk(clk),
        .dataavaibility(DataChecker_0_senddata),
        .ready(Controller_0_ready),
        .regld(Controller_0_regld),
        .rst(rst),
        .upcounterld(Controller_0_upcounterld));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "DataChecker,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_DataChecker_0_1 DataChecker_0
       (.Datain(datain),
        .Ready(Controller_0_ready),
        .clk(clk),
        .rst(rst),
        .senddata(DataChecker_0_senddata));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Reg,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Reg_0_2 Reg_0
       (.clk(clk),
        .info(datain),
        .ld(Controller_0_regld),
        .regout(Reg_0_regout),
        .rst(rst));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Upcounter,Vivado 2023.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Upcounter_0_1 Upcounter_0
       (.Counterout(Upcounter_0_Counterout),
        .clk(clk),
        .ld(Controller_0_upcounterld),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Comparator_0_3
   (Dutycycle,
    Counter,
    PWM);
  input [7:0]Dutycycle;
  input [7:0]Counter;
  output PWM;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Controller_0_1
   (regld,
    upcounterld,
    dataavaibility,
    ready,
    clk,
    rst);
  output regld;
  output upcounterld;
  input dataavaibility;
  output ready;
  input clk;
  input rst;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_DataChecker_0_1
   (Datain,
    senddata,
    clk,
    Ready,
    rst);
  input [7:0]Datain;
  output senddata;
  input clk;
  input Ready;
  input rst;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Reg_0_2
   (ld,
    clk,
    rst,
    info,
    regout);
  input ld;
  input clk;
  input rst;
  input [7:0]info;
  output [7:0]regout;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_Upcounter_0_1
   (clk,
    rst,
    ld,
    Counterout);
  input clk;
  input rst;
  input ld;
  output [7:0]Counterout;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_wrapper
   (PWM_out,
    clk,
    datain,
    rst);
  output PWM_out;
  input clk;
  input [7:0]datain;
  input rst;

  wire PWM_out;
  wire clk;
  wire [7:0]datain;
  wire rst;

  (* hw_handoff = "PWM_Over.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over PWM_Over_i
       (.PWM_out(PWM_out),
        .clk(clk),
        .datain(datain),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "Pwm_generator_zynq_PWM_Over_wrapper_1_0,PWM_Over_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PWM_Over_wrapper,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (PWM_out,
    clk,
    datain,
    rst);
  output PWM_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Pwm_generator_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [7:0]datain;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire PWM_out;
  wire clk;
  wire [7:0]datain;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Over_wrapper U0
       (.PWM_out(PWM_out),
        .clk(clk),
        .datain(datain),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
