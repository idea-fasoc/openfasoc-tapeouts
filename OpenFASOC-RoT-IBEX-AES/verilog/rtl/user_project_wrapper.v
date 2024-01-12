// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

pulpino_top mprj (

  .clk(wb_clk_i),
  .rst_n(wb_rst_i),

  .clk_sel_i(io_in[0]),
  .clk_standalone_i(io_in[1]),
  .testmode_i(io_in[2]),
  .fetch_enable_i(io_in[3]),
  .scan_enable_i(io_in[4]),

  //SPI Slave
  .spi_clk_i(io_in[5]),
  .spi_cs_i(io_in[6]),
  .spi_mode_o(io_out[1:0]),
  .spi_sdo0_o(io_out[2]),
  .spi_sdo1_o(io_out[3]),
  .spi_sdo2_o(io_out[4]),
  .spi_sdo3_o(io_out[5]),
  .spi_sdi0_i(io_in[7]),
  .spi_sdi1_i(io_in[8]),
  .spi_sdi2_i(io_in[9]),
  .spi_sdi3_i(io_in[10]),

  //SPI Master
  .spi_master_clk_o(io_out[6]),
  .spi_master_csn0_o(io_out[7]),
  .spi_master_csn1_o(io_out[8]),
  .spi_master_csn2_o(io_out[9]),
  .spi_master_csn3_o(io_out[10]),
  .spi_master_mode_o(io_out[12:11]),
  .spi_master_sdo0_o(io_out[13]),
  .spi_master_sdo1_o(io_out[14]),
  .spi_master_sdo2_o(io_out[15]),
  .spi_master_sdo3_o(io_out[16]),
  .spi_master_sdi0_i(io_in[11]),
  .spi_master_sdi1_i(io_in[12]),
  .spi_master_sdi2_i(io_in[13]),
  .spi_master_sdi3_i(io_in[14]),

  .scl_pad_i(io_in[15]),
  .scl_pad_o(io_out[17]),
  .scl_padoen_o(io_out[18]),
  .sda_pad_i(io_in[16]),
  .sda_pad_o(io_out[19]),
  .sda_padoen_o(io_out[20]),

  .uart_tx(io_out[21]),
  .uart_rx(io_in[17]),
  .uart_rts(io_out[22]),
  .uart_dtr(io_out[23]),
  .uart_cts(io_in[18]),
  .uart_dsr(io_in[19]),

  .gpio_in(io_in[27:20]),
  .gpio_out(io_out[31:24]),
//   .gpio_dir,
//   .gpio_padcfg,

  // JTAG signals
  .tck_i(user_clock2),
  .trstn_i(io_in[28]),
  .tms_i(io_in[29]),
  .tdi_i(io_in[30]),
  .tdo_o(io_out[32]),

  // PULPino specific pad config
// .pad_cfg_o,
// .pad_mux_o,

  // drive low to enable output
  .io_oeb(io_oeb[32:0])
);

endmodule	// user_project_wrapper

`default_nettype wire
