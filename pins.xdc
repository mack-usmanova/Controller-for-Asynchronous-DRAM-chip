## Clock signal 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk] 
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; 
#IO_L12P_T1_MRCC_35 Sch=clk100mhz 
 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}]; 
 
##Buttons 
set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; 
#IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn 
 
##Pmod Headers 
##Pmod Header JB 
set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { R_cmd }]; 
#IO_L1P_T0_AD0P_15 Sch=jb[1] 
 
set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { W_cmd }]; 
#IO_L14N_T2_SRCC_15 Sch=jb[2] 
 
set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { Mux_sel }]; 
#IO_L13N_T2_MRCC_15 Sch=jb[3] 
 
set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports { CAS }]; 
#IO_L15P_T2_DQS_15 Sch=jb[4] 
 
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { RAS }]; 
#IO_L11N_T1_SRCC_15 Sch=jb[7]   
 
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { W }]; 
#IO_L5P_T0_AD9P_15 Sch=jb[8] 
 
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { clk }]; 
#IO_L13P_T2_MRCC_15 Sch=jb[10] 