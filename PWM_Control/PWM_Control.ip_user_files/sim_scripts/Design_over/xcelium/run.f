-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Design_over/ip/Design_over_Upcounter_0_0/sim/Design_over_Upcounter_0_0.v" \
  "../../../bd/Design_over/ip/Design_over_Comparator_0_0/sim/Design_over_Comparator_0_0.v" \
  "../../../bd/Design_over/ip/Design_over_clk_wiz_0_0/Design_over_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/Design_over/ip/Design_over_clk_wiz_0_0/Design_over_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../PWM_Control.gen/sources_1/bd/Design_over/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Design_over/ip/Design_over_rst_clk_wiz_0_100M_0/sim/Design_over_rst_clk_wiz_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Design_over/sim/Design_over.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

