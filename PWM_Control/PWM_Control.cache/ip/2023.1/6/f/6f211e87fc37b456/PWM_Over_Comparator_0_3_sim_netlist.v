// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 15 13:41:18 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PWM_Over_Comparator_0_3_sim_netlist.v
// Design      : PWM_Over_Comparator_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator
   (PWM,
    ld,
    Counter,
    Dutycycle);
  output PWM;
  input ld;
  input [7:0]Counter;
  input [7:0]Dutycycle;

  wire [7:0]Counter;
  wire [7:0]Dutycycle;
  wire PWM;
  wire ld;
  wire pwm_temp;
  wire pwm_temp0_carry_i_1_n_0;
  wire pwm_temp0_carry_i_2_n_0;
  wire pwm_temp0_carry_i_3_n_0;
  wire pwm_temp0_carry_i_4_n_0;
  wire pwm_temp0_carry_i_5_n_0;
  wire pwm_temp0_carry_i_6_n_0;
  wire pwm_temp0_carry_i_7_n_0;
  wire pwm_temp0_carry_i_8_n_0;
  wire pwm_temp0_carry_n_0;
  wire pwm_temp0_carry_n_1;
  wire pwm_temp0_carry_n_2;
  wire pwm_temp0_carry_n_3;
  wire pwm_temp_reg_i_1_n_0;
  wire [3:0]NLW_pwm_temp0_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_temp0_carry
       (.CI(1'b0),
        .CO({pwm_temp0_carry_n_0,pwm_temp0_carry_n_1,pwm_temp0_carry_n_2,pwm_temp0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_temp0_carry_i_1_n_0,pwm_temp0_carry_i_2_n_0,pwm_temp0_carry_i_3_n_0,pwm_temp0_carry_i_4_n_0}),
        .O(NLW_pwm_temp0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_temp0_carry_i_5_n_0,pwm_temp0_carry_i_6_n_0,pwm_temp0_carry_i_7_n_0,pwm_temp0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_temp0_carry_i_1
       (.I0(Counter[6]),
        .I1(Dutycycle[6]),
        .I2(Dutycycle[7]),
        .I3(Counter[7]),
        .O(pwm_temp0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_temp0_carry_i_2
       (.I0(Counter[4]),
        .I1(Dutycycle[4]),
        .I2(Dutycycle[5]),
        .I3(Counter[5]),
        .O(pwm_temp0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_temp0_carry_i_3
       (.I0(Counter[2]),
        .I1(Dutycycle[2]),
        .I2(Dutycycle[3]),
        .I3(Counter[3]),
        .O(pwm_temp0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_temp0_carry_i_4
       (.I0(Counter[0]),
        .I1(Dutycycle[0]),
        .I2(Dutycycle[1]),
        .I3(Counter[1]),
        .O(pwm_temp0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_temp0_carry_i_5
       (.I0(Counter[6]),
        .I1(Dutycycle[6]),
        .I2(Counter[7]),
        .I3(Dutycycle[7]),
        .O(pwm_temp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_temp0_carry_i_6
       (.I0(Counter[4]),
        .I1(Dutycycle[4]),
        .I2(Counter[5]),
        .I3(Dutycycle[5]),
        .O(pwm_temp0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_temp0_carry_i_7
       (.I0(Counter[2]),
        .I1(Dutycycle[2]),
        .I2(Counter[3]),
        .I3(Dutycycle[3]),
        .O(pwm_temp0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_temp0_carry_i_8
       (.I0(Counter[0]),
        .I1(Dutycycle[0]),
        .I2(Counter[1]),
        .I3(Dutycycle[1]),
        .O(pwm_temp0_carry_i_8_n_0));
  LDCP pwm_temp_reg
       (.CLR(pwm_temp_reg_i_1_n_0),
        .D(1'b0),
        .G(pwm_temp0_carry_n_0),
        .PRE(pwm_temp),
        .Q(PWM));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_temp_reg_i_1
       (.I0(ld),
        .O(pwm_temp_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_temp_reg_i_2
       (.I0(ld),
        .I1(pwm_temp0_carry_n_0),
        .O(pwm_temp));
endmodule

(* CHECK_LICENSE_TYPE = "PWM_Over_Comparator_0_3,Comparator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Comparator,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Dutycycle,
    Counter,
    ld,
    PWM);
  input [7:0]Dutycycle;
  input [7:0]Counter;
  input ld;
  output PWM;

  wire [7:0]Counter;
  wire [7:0]Dutycycle;
  wire PWM;
  wire ld;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator U0
       (.Counter(Counter),
        .Dutycycle(Dutycycle),
        .PWM(PWM),
        .ld(ld));
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
