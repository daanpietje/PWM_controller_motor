// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 13 10:52:07 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Upcounter_0_1_sim_netlist.v
// Design      : PWM_Over_Upcounter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PWM_Over_Upcounter_0_1,Upcounter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Upcounter,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    nrst,
    ld,
    Counterout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input nrst;
  input ld;
  output [7:0]Counterout;

  wire [7:0]Counterout;
  wire clk;
  wire ld;
  wire nrst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter U0
       (.Counterout(Counterout),
        .clk(clk),
        .ld(ld),
        .nrst(nrst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Upcounter
   (Counterout,
    nrst,
    ld,
    clk);
  output [7:0]Counterout;
  input nrst;
  input ld;
  input clk;

  wire [7:0]Counterout;
  wire clk;
  wire ld;
  wire nrst;
  wire [7:0]p_0_in;
  wire \tempcounter[6]_i_2_n_0 ;
  wire \tempcounter[7]_i_2_n_0 ;
  wire \tempcounter[7]_i_3_n_0 ;
  wire \tempcounter[7]_i_4_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tempcounter[0]_i_1 
       (.I0(Counterout[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tempcounter[1]_i_1 
       (.I0(Counterout[0]),
        .I1(Counterout[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tempcounter[2]_i_1 
       (.I0(Counterout[2]),
        .I1(Counterout[0]),
        .I2(Counterout[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tempcounter[3]_i_1 
       (.I0(Counterout[3]),
        .I1(Counterout[0]),
        .I2(Counterout[1]),
        .I3(Counterout[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tempcounter[4]_i_1 
       (.I0(Counterout[4]),
        .I1(Counterout[2]),
        .I2(Counterout[1]),
        .I3(Counterout[0]),
        .I4(Counterout[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \tempcounter[5]_i_1 
       (.I0(Counterout[5]),
        .I1(Counterout[3]),
        .I2(Counterout[0]),
        .I3(Counterout[1]),
        .I4(Counterout[2]),
        .I5(Counterout[4]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \tempcounter[6]_i_1 
       (.I0(Counterout[6]),
        .I1(Counterout[4]),
        .I2(Counterout[2]),
        .I3(\tempcounter[6]_i_2_n_0 ),
        .I4(Counterout[3]),
        .I5(Counterout[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tempcounter[6]_i_2 
       (.I0(Counterout[1]),
        .I1(Counterout[0]),
        .O(\tempcounter[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \tempcounter[7]_i_1 
       (.I0(\tempcounter[7]_i_3_n_0 ),
        .I1(Counterout[7]),
        .I2(\tempcounter[7]_i_4_n_0 ),
        .I3(Counterout[6]),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'h7)) 
    \tempcounter[7]_i_2 
       (.I0(nrst),
        .I1(ld),
        .O(\tempcounter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tempcounter[7]_i_3 
       (.I0(Counterout[4]),
        .I1(Counterout[2]),
        .I2(Counterout[0]),
        .I3(Counterout[1]),
        .I4(Counterout[3]),
        .I5(Counterout[5]),
        .O(\tempcounter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tempcounter[7]_i_4 
       (.I0(Counterout[4]),
        .I1(Counterout[2]),
        .I2(Counterout[1]),
        .I3(Counterout[0]),
        .I4(Counterout[3]),
        .I5(Counterout[5]),
        .O(\tempcounter[7]_i_4_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[0]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[1]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[2]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[3]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[4]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[5]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[6]));
  FDPE #(
    .INIT(1'b0)) 
    \tempcounter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .PRE(\tempcounter[7]_i_2_n_0 ),
        .Q(Counterout[7]));
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
