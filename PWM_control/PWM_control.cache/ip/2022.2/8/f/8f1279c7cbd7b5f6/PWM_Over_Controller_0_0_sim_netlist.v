// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May 16 13:40:49 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Controller_0_0_sim_netlist.v
// Design      : PWM_Over_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Controller
   (out0,
    clk,
    rst,
    dataavaibility);
  output [2:0]out0;
  input clk;
  input rst;
  input dataavaibility;

  wire \FSM_onehot_presentstate[0]_i_1_n_0 ;
  wire \FSM_onehot_presentstate[1]_i_1_n_0 ;
  wire clk;
  wire dataavaibility;
  wire [2:0]out0;
  wire rst;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_presentstate[0]_i_1 
       (.I0(out0[1]),
        .I1(dataavaibility),
        .I2(out0[2]),
        .O(\FSM_onehot_presentstate[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_presentstate[1]_i_1 
       (.I0(out0[2]),
        .I1(dataavaibility),
        .O(\FSM_onehot_presentstate[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:11,s2:100,s0:001,s1:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_presentstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_presentstate[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(out0[2]));
  (* FSM_ENCODED_STATES = "iSTATE:11,s2:100,s0:001,s1:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_presentstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_presentstate[1]_i_1_n_0 ),
        .Q(out0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:11,s2:100,s0:001,s1:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_presentstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(out0[0]),
        .Q(out0[1]));
endmodule

(* CHECK_LICENSE_TYPE = "PWM_Over_Controller_0_0,Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Controller,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire clk;
  wire dataavaibility;
  wire ready;
  wire regld;
  wire rst;
  wire upcounterld;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Controller U0
       (.clk(clk),
        .dataavaibility(dataavaibility),
        .out0({ready,upcounterld,regld}),
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
