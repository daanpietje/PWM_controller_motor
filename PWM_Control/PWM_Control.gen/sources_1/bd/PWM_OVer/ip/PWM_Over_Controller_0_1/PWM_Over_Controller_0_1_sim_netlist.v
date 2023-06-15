// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 13 10:46:05 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_Controller_0_1/PWM_Over_Controller_0_1_sim_netlist.v
// Design      : PWM_Over_Controller_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PWM_Over_Controller_0_1,Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Controller,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module PWM_Over_Controller_0_1
   (regld,
    upcounterld,
    dataavaibility,
    ready,
    clk,
    nrst);
  output regld;
  output upcounterld;
  input dataavaibility;
  output ready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input nrst;

  wire clk;
  wire dataavaibility;
  wire nrst;
  wire ready;
  wire regld;
  wire upcounterld;

  PWM_Over_Controller_0_1_Controller U0
       (.clk(clk),
        .dataavaibility(dataavaibility),
        .nrst(nrst),
        .ready(ready),
        .regld(regld),
        .upcounterld(upcounterld));
endmodule

(* ORIG_REF_NAME = "Controller" *) 
module PWM_Over_Controller_0_1_Controller
   (regld,
    upcounterld,
    ready,
    clk,
    nrst,
    dataavaibility);
  output regld;
  output upcounterld;
  output ready;
  input clk;
  input nrst;
  input dataavaibility;

  wire \FSM_onehot_presentstate[0]_i_1_n_0 ;
  wire \FSM_onehot_presentstate[1]_i_1_n_0 ;
  wire \FSM_onehot_presentstate[1]_i_2_n_0 ;
  wire \FSM_onehot_presentstate[3]_i_1_n_0 ;
  wire \FSM_onehot_presentstate_reg_n_0_[0] ;
  wire \FSM_onehot_presentstate_reg_n_0_[2] ;
  wire \FSM_onehot_presentstate_reg_n_0_[3] ;
  wire clk;
  wire dataavaibility;
  wire nrst;
  wire ready;
  wire regld;
  wire upcounterld;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_presentstate[0]_i_1 
       (.I0(\FSM_onehot_presentstate_reg_n_0_[0] ),
        .I1(dataavaibility),
        .O(\FSM_onehot_presentstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_presentstate[1]_i_1 
       (.I0(\FSM_onehot_presentstate_reg_n_0_[0] ),
        .I1(dataavaibility),
        .I2(\FSM_onehot_presentstate_reg_n_0_[3] ),
        .O(\FSM_onehot_presentstate[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_presentstate[1]_i_2 
       (.I0(nrst),
        .O(\FSM_onehot_presentstate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_presentstate[3]_i_1 
       (.I0(\FSM_onehot_presentstate_reg_n_0_[2] ),
        .I1(dataavaibility),
        .I2(\FSM_onehot_presentstate_reg_n_0_[3] ),
        .O(\FSM_onehot_presentstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_presentstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_presentstate[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_presentstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_presentstate_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_presentstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_presentstate[1]_i_2_n_0 ),
        .D(\FSM_onehot_presentstate[1]_i_1_n_0 ),
        .Q(regld));
  (* FSM_ENCODED_STATES = "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_presentstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_presentstate[1]_i_2_n_0 ),
        .D(regld),
        .Q(\FSM_onehot_presentstate_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:100,s2:0100,s0:0001,s3:1000,s1:0010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_presentstate_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_presentstate[1]_i_2_n_0 ),
        .D(\FSM_onehot_presentstate[3]_i_1_n_0 ),
        .Q(\FSM_onehot_presentstate_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ready_INST_0
       (.I0(\FSM_onehot_presentstate_reg_n_0_[0] ),
        .I1(\FSM_onehot_presentstate_reg_n_0_[3] ),
        .O(ready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    upcounterld_INST_0
       (.I0(\FSM_onehot_presentstate_reg_n_0_[2] ),
        .I1(\FSM_onehot_presentstate_reg_n_0_[3] ),
        .O(upcounterld));
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
