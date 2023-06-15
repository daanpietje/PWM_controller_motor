// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Jun 12 13:28:19 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_control.gen/sources_1/bd/PWM_Over/ip/PWM_Over_Reg_0_2/PWM_Over_Reg_0_2_sim_netlist.v
// Design      : PWM_Over_Reg_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PWM_Over_Reg_0_2,Reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Reg,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module PWM_Over_Reg_0_2
   (ld,
    clk,
    rst,
    info,
    regout);
  input ld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]info;
  output [7:0]regout;

  wire clk;
  wire [7:0]info;
  wire ld;
  wire [7:0]regout;
  wire rst;

  PWM_Over_Reg_0_2_Reg U0
       (.clk(clk),
        .info(info),
        .ld(ld),
        .regout(regout),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module PWM_Over_Reg_0_2_Reg
   (regout,
    ld,
    info,
    clk,
    rst);
  output [7:0]regout;
  input ld;
  input [7:0]info;
  input clk;
  input rst;

  wire clk;
  wire [7:0]info;
  wire ld;
  wire [7:0]regout;
  wire \regout[7]_i_1_n_0 ;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \regout[7]_i_1 
       (.I0(rst),
        .O(\regout[7]_i_1_n_0 ));
  FDCE \regout_reg[0] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[0]),
        .Q(regout[0]));
  FDCE \regout_reg[1] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[1]),
        .Q(regout[1]));
  FDCE \regout_reg[2] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[2]),
        .Q(regout[2]));
  FDCE \regout_reg[3] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[3]),
        .Q(regout[3]));
  FDCE \regout_reg[4] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[4]),
        .Q(regout[4]));
  FDCE \regout_reg[5] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[5]),
        .Q(regout[5]));
  FDCE \regout_reg[6] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[6]),
        .Q(regout[6]));
  FDCE \regout_reg[7] 
       (.C(clk),
        .CE(ld),
        .CLR(\regout[7]_i_1_n_0 ),
        .D(info[7]),
        .Q(regout[7]));
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
