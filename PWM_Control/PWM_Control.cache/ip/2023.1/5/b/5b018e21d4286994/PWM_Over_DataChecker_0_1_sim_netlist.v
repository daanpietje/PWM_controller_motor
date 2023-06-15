// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 13 10:46:05 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_DataChecker_0_1_sim_netlist.v
// Design      : PWM_Over_DataChecker_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataChecker
   (senddata,
    Ready,
    nrst,
    Datain);
  output senddata;
  input Ready;
  input nrst;
  input [7:0]Datain;

  wire [7:0]Datain;
  wire Ready;
  wire [7:0]lastsenddata;
  wire \lastsenddata_reg[0]_i_1_n_0 ;
  wire \lastsenddata_reg[1]_i_1_n_0 ;
  wire \lastsenddata_reg[2]_i_1_n_0 ;
  wire \lastsenddata_reg[3]_i_1_n_0 ;
  wire \lastsenddata_reg[4]_i_1_n_0 ;
  wire \lastsenddata_reg[5]_i_1_n_0 ;
  wire \lastsenddata_reg[6]_i_1_n_0 ;
  wire \lastsenddata_reg[7]_i_1_n_0 ;
  wire \lastsenddata_reg[7]_i_2_n_0 ;
  wire \lastsenddata_reg[7]_i_3_n_0 ;
  wire nrst;
  wire senddata;
  wire senddata_reg_i_1_n_0;
  wire senddata_reg_i_2_n_0;
  wire senddata_reg_i_3_n_0;
  wire senddata_reg_i_4_n_0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[0] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[0]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[0]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[0]_i_1 
       (.I0(Datain[0]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[1] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[1]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[1]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[1]_i_1 
       (.I0(Datain[1]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[2] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[2]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[2]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[2]_i_1 
       (.I0(Datain[2]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[3] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[3]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[3]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[3]_i_1 
       (.I0(Datain[3]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[4] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[4]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[4]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[4]_i_1 
       (.I0(Datain[4]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[5] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[5]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[5]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[5]_i_1 
       (.I0(Datain[5]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[6] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[6]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[6]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[6]_i_1 
       (.I0(Datain[6]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lastsenddata_reg[7] 
       (.CLR(1'b0),
        .D(\lastsenddata_reg[7]_i_1_n_0 ),
        .G(\lastsenddata_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(lastsenddata[7]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \lastsenddata_reg[7]_i_1 
       (.I0(Datain[7]),
        .I1(\lastsenddata_reg[7]_i_3_n_0 ),
        .I2(senddata_reg_i_3_n_0),
        .I3(senddata_reg_i_4_n_0),
        .I4(Ready),
        .I5(nrst),
        .O(\lastsenddata_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    \lastsenddata_reg[7]_i_2 
       (.I0(senddata_reg_i_4_n_0),
        .I1(senddata_reg_i_3_n_0),
        .I2(\lastsenddata_reg[7]_i_3_n_0 ),
        .I3(Ready),
        .I4(nrst),
        .O(\lastsenddata_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \lastsenddata_reg[7]_i_3 
       (.I0(lastsenddata[6]),
        .I1(Datain[6]),
        .I2(lastsenddata[7]),
        .I3(Datain[7]),
        .O(\lastsenddata_reg[7]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    senddata_reg
       (.CLR(senddata_reg_i_2_n_0),
        .D(senddata_reg_i_1_n_0),
        .G(senddata_reg_i_1_n_0),
        .GE(1'b1),
        .Q(senddata));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    senddata_reg_i_1
       (.I0(Datain[7]),
        .I1(lastsenddata[7]),
        .I2(Datain[6]),
        .I3(lastsenddata[6]),
        .I4(senddata_reg_i_3_n_0),
        .I5(senddata_reg_i_4_n_0),
        .O(senddata_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    senddata_reg_i_2
       (.I0(Ready),
        .O(senddata_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    senddata_reg_i_3
       (.I0(lastsenddata[3]),
        .I1(Datain[3]),
        .I2(Datain[5]),
        .I3(lastsenddata[5]),
        .I4(Datain[4]),
        .I5(lastsenddata[4]),
        .O(senddata_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    senddata_reg_i_4
       (.I0(lastsenddata[0]),
        .I1(Datain[0]),
        .I2(Datain[2]),
        .I3(lastsenddata[2]),
        .I4(Datain[1]),
        .I5(lastsenddata[1]),
        .O(senddata_reg_i_4_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "PWM_Over_DataChecker_0_1,DataChecker,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DataChecker,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Datain,
    senddata,
    clk,
    Ready,
    nrst);
  input [7:0]Datain;
  output senddata;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input Ready;
  input nrst;

  wire [7:0]Datain;
  wire Ready;
  wire nrst;
  wire senddata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataChecker U0
       (.Datain(Datain),
        .Ready(Ready),
        .nrst(nrst),
        .senddata(senddata));
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
