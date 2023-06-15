// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 15 14:16:20 2023
// Host        : DaanAsus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/daanv/Desktop/Git/PWM_controller_motor/PWM_Control/PWM_Control.gen/sources_1/bd/Complete_design_car/ip/Complete_design_car_PWM_Over_wrapper_0_0/Complete_design_car_PWM_Over_wrapper_0_0_sim_netlist.v
// Design      : Complete_design_car_PWM_Over_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Complete_design_car_PWM_Over_wrapper_0_0,PWM_Over_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PWM_Over_wrapper,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module Complete_design_car_PWM_Over_wrapper_0_0
   (PWM_out,
    clk,
    datain,
    nrst);
  output PWM_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Complete_design_car_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [7:0]datain;
  input nrst;

  wire PWM_out;
  wire clk;
  wire [7:0]datain;
  wire nrst;

  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_wrapper U0
       (.PWM_out(PWM_out),
        .clk(clk),
        .datain(datain),
        .nrst(nrst));
endmodule

(* ORIG_REF_NAME = "PWM_Over" *) (* hw_handoff = "PWM_Over.hwdef" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over
   (PWM_out,
    clk,
    datain,
    nrst);
  output PWM_out;
  input clk;
  input [7:0]datain;
  input nrst;

  wire Controller_0_comparatorld;
  wire Controller_0_ready;
  wire Controller_0_regld;
  wire Controller_0_upcounterld;
  wire DataChecker_0_senddata;
  wire PWM_out;
  wire [7:0]Reg_0_regout;
  wire [7:0]Upcounter_0_Counterout;
  wire clk;
  wire [7:0]datain;
  wire nrst;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Comparator,Vivado 2023.1" *) 
  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Comparator_0_3 Comparator_0
       (.Counter(Upcounter_0_Counterout),
        .Dutycycle(Reg_0_regout),
        .PWM(PWM_out),
        .ld(Controller_0_comparatorld));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Controller,Vivado 2023.1" *) 
  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Controller_0_1 Controller_0
       (.clk(clk),
        .comparatorld(Controller_0_comparatorld),
        .dataavaibility(DataChecker_0_senddata),
        .nrst(nrst),
        .ready(Controller_0_ready),
        .regld(Controller_0_regld),
        .upcounterld(Controller_0_upcounterld));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "DataChecker,Vivado 2023.1" *) 
  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_DataChecker_0_1 DataChecker_0
       (.Datain(datain),
        .Ready(Controller_0_ready),
        .clk(clk),
        .nrst(nrst),
        .senddata(DataChecker_0_senddata));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Reg,Vivado 2023.1" *) 
  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Reg_0_2 Reg_0
       (.clk(clk),
        .info(datain),
        .ld(Controller_0_regld),
        .nrst(nrst),
        .regout(Reg_0_regout));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "Upcounter,Vivado 2023.1" *) 
  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Upcounter_0_1 Upcounter_0
       (.Counterout(Upcounter_0_Counterout),
        .clk(clk),
        .ld(Controller_0_upcounterld),
        .nrst(nrst));
endmodule

(* ORIG_REF_NAME = "PWM_Over_Comparator_0_3" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Comparator_0_3
   (Dutycycle,
    Counter,
    ld,
    PWM);
  input [7:0]Dutycycle;
  input [7:0]Counter;
  input ld;
  output PWM;


endmodule

(* ORIG_REF_NAME = "PWM_Over_Controller_0_1" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Controller_0_1
   (regld,
    upcounterld,
    dataavaibility,
    comparatorld,
    ready,
    clk,
    nrst);
  output regld;
  output upcounterld;
  input dataavaibility;
  output comparatorld;
  output ready;
  input clk;
  input nrst;


endmodule

(* ORIG_REF_NAME = "PWM_Over_DataChecker_0_1" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_DataChecker_0_1
   (Datain,
    senddata,
    clk,
    Ready,
    nrst);
  input [7:0]Datain;
  output senddata;
  input clk;
  input Ready;
  input nrst;


endmodule

(* ORIG_REF_NAME = "PWM_Over_Reg_0_2" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Reg_0_2
   (ld,
    clk,
    nrst,
    info,
    regout);
  input ld;
  input clk;
  input nrst;
  input [7:0]info;
  output [7:0]regout;


endmodule

(* ORIG_REF_NAME = "PWM_Over_Upcounter_0_1" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_Upcounter_0_1
   (clk,
    nrst,
    ld,
    Counterout);
  input clk;
  input nrst;
  input ld;
  output [7:0]Counterout;


endmodule

(* ORIG_REF_NAME = "PWM_Over_wrapper" *) 
module Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over_wrapper
   (PWM_out,
    clk,
    datain,
    nrst);
  output PWM_out;
  input clk;
  input [7:0]datain;
  input nrst;

  wire PWM_out;
  wire clk;
  wire [7:0]datain;
  wire nrst;

  (* hw_handoff = "PWM_Over.hwdef" *) 
  Complete_design_car_PWM_Over_wrapper_0_0_PWM_Over PWM_Over_i
       (.PWM_out(PWM_out),
        .clk(clk),
        .datain(datain),
        .nrst(nrst));
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
