set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions tt_025C_1v80 -library sky130_fd_sc_hd__tt_025C_1v80
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports rst_n]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports clk_sel_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports clk_standalone_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports testmode_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports fetch_enable_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports scan_enable_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_cs_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_sdi0_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_sdi1_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_sdi2_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_sdi3_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_master_sdi0_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_master_sdi1_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_master_sdi2_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports spi_master_sdi3_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports scl_pad_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports sda_pad_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports uart_rx]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports uart_cts]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports uart_dsr]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports {gpio_in[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports trstn_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports tms_i]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 [get_ports tdi_i]
set_max_fanout 10 [current_design]
set_load -pin_load 0.1 [get_ports {spi_mode_o[1]}]
set_load -pin_load 0.1 [get_ports {spi_mode_o[0]}]
set_load -pin_load 0.1 [get_ports spi_sdo0_o]
set_load -pin_load 0.1 [get_ports spi_sdo1_o]
set_load -pin_load 0.1 [get_ports spi_sdo2_o]
set_load -pin_load 0.1 [get_ports spi_sdo3_o]
set_load -pin_load 0.1 [get_ports spi_master_clk_o]
set_load -pin_load 0.1 [get_ports spi_master_csn0_o]
set_load -pin_load 0.1 [get_ports spi_master_csn1_o]
set_load -pin_load 0.1 [get_ports spi_master_csn2_o]
set_load -pin_load 0.1 [get_ports spi_master_csn3_o]
set_load -pin_load 0.1 [get_ports {spi_master_mode_o[1]}]
set_load -pin_load 0.1 [get_ports {spi_master_mode_o[0]}]
set_load -pin_load 0.1 [get_ports spi_master_sdo0_o]
set_load -pin_load 0.1 [get_ports spi_master_sdo1_o]
set_load -pin_load 0.1 [get_ports spi_master_sdo2_o]
set_load -pin_load 0.1 [get_ports spi_master_sdo3_o]
set_load -pin_load 0.1 [get_ports scl_pad_o]
set_load -pin_load 0.1 [get_ports scl_padoen_o]
set_load -pin_load 0.1 [get_ports sda_pad_o]
set_load -pin_load 0.1 [get_ports sda_padoen_o]
set_load -pin_load 0.1 [get_ports uart_tx]
set_load -pin_load 0.1 [get_ports uart_rts]
set_load -pin_load 0.1 [get_ports uart_dtr]
set_load -pin_load 0.1 [get_ports {gpio_out[31]}]
set_load -pin_load 0.1 [get_ports {gpio_out[30]}]
set_load -pin_load 0.1 [get_ports {gpio_out[29]}]
set_load -pin_load 0.1 [get_ports {gpio_out[28]}]
set_load -pin_load 0.1 [get_ports {gpio_out[27]}]
set_load -pin_load 0.1 [get_ports {gpio_out[26]}]
set_load -pin_load 0.1 [get_ports {gpio_out[25]}]
set_load -pin_load 0.1 [get_ports {gpio_out[24]}]
set_load -pin_load 0.1 [get_ports {gpio_out[23]}]
set_load -pin_load 0.1 [get_ports {gpio_out[22]}]
set_load -pin_load 0.1 [get_ports {gpio_out[21]}]
set_load -pin_load 0.1 [get_ports {gpio_out[20]}]
set_load -pin_load 0.1 [get_ports {gpio_out[19]}]
set_load -pin_load 0.1 [get_ports {gpio_out[18]}]
set_load -pin_load 0.1 [get_ports {gpio_out[17]}]
set_load -pin_load 0.1 [get_ports {gpio_out[16]}]
set_load -pin_load 0.1 [get_ports {gpio_out[15]}]
set_load -pin_load 0.1 [get_ports {gpio_out[14]}]
set_load -pin_load 0.1 [get_ports {gpio_out[13]}]
set_load -pin_load 0.1 [get_ports {gpio_out[12]}]
set_load -pin_load 0.1 [get_ports {gpio_out[11]}]
set_load -pin_load 0.1 [get_ports {gpio_out[10]}]
set_load -pin_load 0.1 [get_ports {gpio_out[9]}]
set_load -pin_load 0.1 [get_ports {gpio_out[8]}]
set_load -pin_load 0.1 [get_ports {gpio_out[7]}]
set_load -pin_load 0.1 [get_ports {gpio_out[6]}]
set_load -pin_load 0.1 [get_ports {gpio_out[5]}]
set_load -pin_load 0.1 [get_ports {gpio_out[4]}]
set_load -pin_load 0.1 [get_ports {gpio_out[3]}]
set_load -pin_load 0.1 [get_ports {gpio_out[2]}]
set_load -pin_load 0.1 [get_ports {gpio_out[1]}]
set_load -pin_load 0.1 [get_ports {gpio_out[0]}]
set_load -pin_load 0.1 [get_ports tdo_o]
set_load -pin_load 0.1 [get_ports {io_oeb[32]}]
set_load -pin_load 0.1 [get_ports {io_oeb[31]}]
set_load -pin_load 0.1 [get_ports {io_oeb[30]}]
set_load -pin_load 0.1 [get_ports {io_oeb[29]}]
set_load -pin_load 0.1 [get_ports {io_oeb[28]}]
set_load -pin_load 0.1 [get_ports {io_oeb[27]}]
set_load -pin_load 0.1 [get_ports {io_oeb[26]}]
set_load -pin_load 0.1 [get_ports {io_oeb[25]}]
set_load -pin_load 0.1 [get_ports {io_oeb[24]}]
set_load -pin_load 0.1 [get_ports {io_oeb[23]}]
set_load -pin_load 0.1 [get_ports {io_oeb[22]}]
set_load -pin_load 0.1 [get_ports {io_oeb[21]}]
set_load -pin_load 0.1 [get_ports {io_oeb[20]}]
set_load -pin_load 0.1 [get_ports {io_oeb[19]}]
set_load -pin_load 0.1 [get_ports {io_oeb[18]}]
set_load -pin_load 0.1 [get_ports {io_oeb[17]}]
set_load -pin_load 0.1 [get_ports {io_oeb[16]}]
set_load -pin_load 0.1 [get_ports {io_oeb[15]}]
set_load -pin_load 0.1 [get_ports {io_oeb[14]}]
set_load -pin_load 0.1 [get_ports {io_oeb[13]}]
set_load -pin_load 0.1 [get_ports {io_oeb[12]}]
set_load -pin_load 0.1 [get_ports {io_oeb[11]}]
set_load -pin_load 0.1 [get_ports {io_oeb[10]}]
set_load -pin_load 0.1 [get_ports {io_oeb[9]}]
set_load -pin_load 0.1 [get_ports {io_oeb[8]}]
set_load -pin_load 0.1 [get_ports {io_oeb[7]}]
set_load -pin_load 0.1 [get_ports {io_oeb[6]}]
set_load -pin_load 0.1 [get_ports {io_oeb[5]}]
set_load -pin_load 0.1 [get_ports {io_oeb[4]}]
set_load -pin_load 0.1 [get_ports {io_oeb[3]}]
set_load -pin_load 0.1 [get_ports {io_oeb[2]}]
set_load -pin_load 0.1 [get_ports {io_oeb[1]}]
set_load -pin_load 0.1 [get_ports {io_oeb[0]}]
set_case_analysis 0 [get_ports clk_sel_i]
set_case_analysis 0 [get_ports testmode_i]
set_case_analysis 0 [get_ports uart_cts]
set_case_analysis 0 [get_ports uart_dsr]
create_clock [get_ports clk]  -period 25  -waveform {0 12.5}
set_clock_latency 0.1  [get_clocks clk]
set_clock_uncertainty 0.1  [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
create_clock [get_ports spi_clk_i]  -name spi_sck  -period 40  -waveform {0 20}
set_clock_latency 0.1  [get_clocks spi_sck]
set_clock_uncertainty 0.1  [get_clocks spi_sck]
set_clock_transition -max -rise 0.1 [get_clocks spi_sck]
set_clock_transition -max -fall 0.1 [get_clocks spi_sck]
set_clock_transition -min -rise 0.1 [get_clocks spi_sck]
set_clock_transition -min -fall 0.1 [get_clocks spi_sck]
create_clock [get_ports tck_i]  -name tck  -period 40  -waveform {0 20}
set_clock_latency 0.1  [get_clocks tck]
set_clock_uncertainty 0.1  [get_clocks tck]
set_clock_transition -max -rise 0.1 [get_clocks tck]
set_clock_transition -max -fall 0.1 [get_clocks tck]
set_clock_transition -min -rise 0.1 [get_clocks tck]
set_clock_transition -min -fall 0.1 [get_clocks tck]
group_path -name input_grp  -from [list [get_ports clk] [get_ports rst_n] [get_ports clk_sel_i]           \
[get_ports clk_standalone_i] [get_ports testmode_i] [get_ports fetch_enable_i] \
[get_ports scan_enable_i] [get_ports spi_clk_i] [get_ports spi_cs_i]           \
[get_ports spi_sdi0_i] [get_ports spi_sdi1_i] [get_ports spi_sdi2_i]           \
[get_ports spi_sdi3_i] [get_ports spi_master_sdi0_i] [get_ports                \
spi_master_sdi1_i] [get_ports spi_master_sdi2_i] [get_ports spi_master_sdi3_i] \
[get_ports scl_pad_i] [get_ports sda_pad_i] [get_ports uart_rx] [get_ports     \
uart_cts] [get_ports uart_dsr] [get_ports {gpio_in[31]}] [get_ports            \
{gpio_in[30]}] [get_ports {gpio_in[29]}] [get_ports {gpio_in[28]}] [get_ports  \
{gpio_in[27]}] [get_ports {gpio_in[26]}] [get_ports {gpio_in[25]}] [get_ports  \
{gpio_in[24]}] [get_ports {gpio_in[23]}] [get_ports {gpio_in[22]}] [get_ports  \
{gpio_in[21]}] [get_ports {gpio_in[20]}] [get_ports {gpio_in[19]}] [get_ports  \
{gpio_in[18]}] [get_ports {gpio_in[17]}] [get_ports {gpio_in[16]}] [get_ports  \
{gpio_in[15]}] [get_ports {gpio_in[14]}] [get_ports {gpio_in[13]}] [get_ports  \
{gpio_in[12]}] [get_ports {gpio_in[11]}] [get_ports {gpio_in[10]}] [get_ports  \
{gpio_in[9]}] [get_ports {gpio_in[8]}] [get_ports {gpio_in[7]}] [get_ports     \
{gpio_in[6]}] [get_ports {gpio_in[5]}] [get_ports {gpio_in[4]}] [get_ports     \
{gpio_in[3]}] [get_ports {gpio_in[2]}] [get_ports {gpio_in[1]}] [get_ports     \
{gpio_in[0]}] [get_ports tck_i] [get_ports trstn_i] [get_ports tms_i]          \
[get_ports tdi_i]]
group_path -name output_grp  -to [list [get_ports {spi_mode_o[1]}] [get_ports {spi_mode_o[0]}] [get_ports  \
spi_sdo0_o] [get_ports spi_sdo1_o] [get_ports spi_sdo2_o] [get_ports           \
spi_sdo3_o] [get_ports spi_master_clk_o] [get_ports spi_master_csn0_o]         \
[get_ports spi_master_csn1_o] [get_ports spi_master_csn2_o] [get_ports         \
spi_master_csn3_o] [get_ports {spi_master_mode_o[1]}] [get_ports               \
{spi_master_mode_o[0]}] [get_ports spi_master_sdo0_o] [get_ports               \
spi_master_sdo1_o] [get_ports spi_master_sdo2_o] [get_ports spi_master_sdo3_o] \
[get_ports scl_pad_o] [get_ports scl_padoen_o] [get_ports sda_pad_o]           \
[get_ports sda_padoen_o] [get_ports uart_tx] [get_ports uart_rts] [get_ports   \
uart_dtr] [get_ports {gpio_out[31]}] [get_ports {gpio_out[30]}] [get_ports     \
{gpio_out[29]}] [get_ports {gpio_out[28]}] [get_ports {gpio_out[27]}]          \
[get_ports {gpio_out[26]}] [get_ports {gpio_out[25]}] [get_ports               \
{gpio_out[24]}] [get_ports {gpio_out[23]}] [get_ports {gpio_out[22]}]          \
[get_ports {gpio_out[21]}] [get_ports {gpio_out[20]}] [get_ports               \
{gpio_out[19]}] [get_ports {gpio_out[18]}] [get_ports {gpio_out[17]}]          \
[get_ports {gpio_out[16]}] [get_ports {gpio_out[15]}] [get_ports               \
{gpio_out[14]}] [get_ports {gpio_out[13]}] [get_ports {gpio_out[12]}]          \
[get_ports {gpio_out[11]}] [get_ports {gpio_out[10]}] [get_ports               \
{gpio_out[9]}] [get_ports {gpio_out[8]}] [get_ports {gpio_out[7]}] [get_ports  \
{gpio_out[6]}] [get_ports {gpio_out[5]}] [get_ports {gpio_out[4]}] [get_ports  \
{gpio_out[3]}] [get_ports {gpio_out[2]}] [get_ports {gpio_out[1]}] [get_ports  \
{gpio_out[0]}] [get_ports tdo_o] [get_ports {io_oeb[32]}] [get_ports           \
{io_oeb[31]}] [get_ports {io_oeb[30]}] [get_ports {io_oeb[29]}] [get_ports     \
{io_oeb[28]}] [get_ports {io_oeb[27]}] [get_ports {io_oeb[26]}] [get_ports     \
{io_oeb[25]}] [get_ports {io_oeb[24]}] [get_ports {io_oeb[23]}] [get_ports     \
{io_oeb[22]}] [get_ports {io_oeb[21]}] [get_ports {io_oeb[20]}] [get_ports     \
{io_oeb[19]}] [get_ports {io_oeb[18]}] [get_ports {io_oeb[17]}] [get_ports     \
{io_oeb[16]}] [get_ports {io_oeb[15]}] [get_ports {io_oeb[14]}] [get_ports     \
{io_oeb[13]}] [get_ports {io_oeb[12]}] [get_ports {io_oeb[11]}] [get_ports     \
{io_oeb[10]}] [get_ports {io_oeb[9]}] [get_ports {io_oeb[8]}] [get_ports       \
{io_oeb[7]}] [get_ports {io_oeb[6]}] [get_ports {io_oeb[5]}] [get_ports        \
{io_oeb[4]}] [get_ports {io_oeb[3]}] [get_ports {io_oeb[2]}] [get_ports        \
{io_oeb[1]}] [get_ports {io_oeb[0]}]]
set_max_delay 25  -to [get_ports {spi_mode_o[1]}]
set_max_delay 25  -to [get_ports {spi_mode_o[0]}]
set_max_delay 25  -to [get_ports spi_sdo0_o]
set_max_delay 25  -to [get_ports spi_sdo1_o]
set_max_delay 25  -to [get_ports spi_sdo2_o]
set_max_delay 25  -to [get_ports spi_sdo3_o]
set_max_delay 25  -to [get_ports spi_master_clk_o]
set_max_delay 25  -to [get_ports spi_master_csn0_o]
set_max_delay 25  -to [get_ports spi_master_csn1_o]
set_max_delay 25  -to [get_ports spi_master_csn2_o]
set_max_delay 25  -to [get_ports spi_master_csn3_o]
set_max_delay 25  -to [get_ports {spi_master_mode_o[1]}]
set_max_delay 25  -to [get_ports {spi_master_mode_o[0]}]
set_max_delay 25  -to [get_ports spi_master_sdo0_o]
set_max_delay 25  -to [get_ports spi_master_sdo1_o]
set_max_delay 25  -to [get_ports spi_master_sdo2_o]
set_max_delay 25  -to [get_ports spi_master_sdo3_o]
set_max_delay 25  -to [get_ports scl_pad_o]
set_max_delay 25  -to [get_ports scl_padoen_o]
set_max_delay 25  -to [get_ports sda_pad_o]
set_max_delay 25  -to [get_ports sda_padoen_o]
set_max_delay 25  -to [get_ports uart_tx]
set_max_delay 25  -to [get_ports uart_rts]
set_max_delay 25  -to [get_ports uart_dtr]
set_max_delay 25  -to [get_ports {gpio_out[31]}]
set_max_delay 25  -to [get_ports {gpio_out[30]}]
set_max_delay 25  -to [get_ports {gpio_out[29]}]
set_max_delay 25  -to [get_ports {gpio_out[28]}]
set_max_delay 25  -to [get_ports {gpio_out[27]}]
set_max_delay 25  -to [get_ports {gpio_out[26]}]
set_max_delay 25  -to [get_ports {gpio_out[25]}]
set_max_delay 25  -to [get_ports {gpio_out[24]}]
set_max_delay 25  -to [get_ports {gpio_out[23]}]
set_max_delay 25  -to [get_ports {gpio_out[22]}]
set_max_delay 25  -to [get_ports {gpio_out[21]}]
set_max_delay 25  -to [get_ports {gpio_out[20]}]
set_max_delay 25  -to [get_ports {gpio_out[19]}]
set_max_delay 25  -to [get_ports {gpio_out[18]}]
set_max_delay 25  -to [get_ports {gpio_out[17]}]
set_max_delay 25  -to [get_ports {gpio_out[16]}]
set_max_delay 25  -to [get_ports {gpio_out[15]}]
set_max_delay 25  -to [get_ports {gpio_out[14]}]
set_max_delay 25  -to [get_ports {gpio_out[13]}]
set_max_delay 25  -to [get_ports {gpio_out[12]}]
set_max_delay 25  -to [get_ports {gpio_out[11]}]
set_max_delay 25  -to [get_ports {gpio_out[10]}]
set_max_delay 25  -to [get_ports {gpio_out[9]}]
set_max_delay 25  -to [get_ports {gpio_out[8]}]
set_max_delay 25  -to [get_ports {gpio_out[7]}]
set_max_delay 25  -to [get_ports {gpio_out[6]}]
set_max_delay 25  -to [get_ports {gpio_out[5]}]
set_max_delay 25  -to [get_ports {gpio_out[4]}]
set_max_delay 25  -to [get_ports {gpio_out[3]}]
set_max_delay 25  -to [get_ports {gpio_out[2]}]
set_max_delay 25  -to [get_ports {gpio_out[1]}]
set_max_delay 25  -to [get_ports {gpio_out[0]}]
set_max_delay 25  -to [get_ports tdo_o]
set_max_delay 25  -to [get_ports {io_oeb[32]}]
set_max_delay 25  -to [get_ports {io_oeb[31]}]
set_max_delay 25  -to [get_ports {io_oeb[30]}]
set_max_delay 25  -to [get_ports {io_oeb[29]}]
set_max_delay 25  -to [get_ports {io_oeb[28]}]
set_max_delay 25  -to [get_ports {io_oeb[27]}]
set_max_delay 25  -to [get_ports {io_oeb[26]}]
set_max_delay 25  -to [get_ports {io_oeb[25]}]
set_max_delay 25  -to [get_ports {io_oeb[24]}]
set_max_delay 25  -to [get_ports {io_oeb[23]}]
set_max_delay 25  -to [get_ports {io_oeb[22]}]
set_max_delay 25  -to [get_ports {io_oeb[21]}]
set_max_delay 25  -to [get_ports {io_oeb[20]}]
set_max_delay 25  -to [get_ports {io_oeb[19]}]
set_max_delay 25  -to [get_ports {io_oeb[18]}]
set_max_delay 25  -to [get_ports {io_oeb[17]}]
set_max_delay 25  -to [get_ports {io_oeb[16]}]
set_max_delay 25  -to [get_ports {io_oeb[15]}]
set_max_delay 25  -to [get_ports {io_oeb[14]}]
set_max_delay 25  -to [get_ports {io_oeb[13]}]
set_max_delay 25  -to [get_ports {io_oeb[12]}]
set_max_delay 25  -to [get_ports {io_oeb[11]}]
set_max_delay 25  -to [get_ports {io_oeb[10]}]
set_max_delay 25  -to [get_ports {io_oeb[9]}]
set_max_delay 25  -to [get_ports {io_oeb[8]}]
set_max_delay 25  -to [get_ports {io_oeb[7]}]
set_max_delay 25  -to [get_ports {io_oeb[6]}]
set_max_delay 25  -to [get_ports {io_oeb[5]}]
set_max_delay 25  -to [get_ports {io_oeb[4]}]
set_max_delay 25  -to [get_ports {io_oeb[3]}]
set_max_delay 25  -to [get_ports {io_oeb[2]}]
set_max_delay 25  -to [get_ports {io_oeb[1]}]
set_max_delay 25  -to [get_ports {io_oeb[0]}]
set_input_delay -clock clk  0.1  [get_ports testmode_i]
set_input_delay -clock clk  0.1  [get_ports fetch_enable_i]
set_input_delay -clock clk  0.1  [get_ports scan_enable_i]
set_input_delay -clock spi_sck  0.1  [get_ports spi_cs_i]
set_input_delay -clock spi_sck  0.1  [get_ports spi_sdi0_i]
set_input_delay -clock spi_sck  0.1  [get_ports spi_sdi1_i]
set_input_delay -clock spi_sck  0.1  [get_ports spi_sdi2_i]
set_input_delay -clock spi_sck  0.1  [get_ports spi_sdi3_i]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[31]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[30]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[29]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[28]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[27]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[26]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[25]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[24]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[23]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[22]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[21]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[20]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[19]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[18]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[17]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[16]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[15]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[14]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[13]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[12]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[11]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[10]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[9]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[8]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[7]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[6]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[5]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[4]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[3]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[2]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[1]}]
set_input_delay -clock clk  0.1  [get_ports {gpio_in[0]}]
set_input_delay -clock tck  0.1  [get_ports trstn_i]
set_input_delay -clock tck  0.1  [get_ports tms_i]
set_input_delay -clock tck  0.1  [get_ports tdi_i]
set_output_delay -clock spi_sck  0.1  [get_ports {spi_mode_o[1]}]
set_output_delay -clock spi_sck  0.1  [get_ports {spi_mode_o[0]}]
set_output_delay -clock spi_sck  0.1  [get_ports spi_sdo0_o]
set_output_delay -clock spi_sck  0.1  [get_ports spi_sdo1_o]
set_output_delay -clock spi_sck  0.1  [get_ports spi_sdo2_o]
set_output_delay -clock spi_sck  0.1  [get_ports spi_sdo3_o]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[31]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[30]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[29]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[28]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[27]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[26]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[25]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[24]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[23]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[22]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[21]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[20]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[19]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[18]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[17]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[16]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[15]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[14]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[13]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[12]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[11]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[10]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[9]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[8]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[7]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[6]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[5]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[4]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[3]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[2]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[1]}]
set_output_delay -clock clk  0.1  [get_ports {gpio_out[0]}]
set_output_delay -clock tck  0.1  [get_ports tdo_o]
set_clock_groups  -asynchronous -name clk_1  -group [get_clocks clk] -group    \
[get_clocks spi_sck] -group [get_clocks tck]
set_resistance 0  [get_nets rst_n]