module spi_device_tlul 
(
    input                               clk_i,
    input                               rst_ni,

    // SPI device interface
    input  logic                        test_mode,
    input  logic                        spi_sclk,
    input  logic                        spi_cs,
    output logic  [1:0]                 spi_mode,
    input  logic                        spi_sdi0,
    input  logic                        spi_sdi1,
    input  logic                        spi_sdi2,
    input  logic                        spi_sdi3,
    output logic                        spi_sdo0,
    output logic                        spi_sdo1,
    output logic                        spi_sdo2,
    output logic                        spi_sdo3,

    // TL-UL interface
    input  tlul_pkg::tl_d2h_t           tl_i,
    output tlul_pkg::tl_h2d_t           tl_o
);

    logic        en_quad;
    logic  [7:0] rx_counter;
    logic        rx_counter_upd;
    logic [31:0] rx_data;
    logic        rx_data_valid;

    logic  [7:0] tx_counter;
    logic        tx_counter_upd;
    logic [31:0] tx_data;
    logic        tx_data_valid;

    logic        ctrl_rd_wr;

    logic [31:0] ctrl_addr;
    logic        ctrl_addr_valid;

    logic [31:0] ctrl_data_rx;
    logic        ctrl_data_rx_valid;
    logic        ctrl_data_rx_ready;
    logic [31:0] ctrl_data_tx;
    logic        ctrl_data_tx_valid;
    logic        ctrl_data_tx_ready;

    logic [31:0] fifo_data_rx;
    logic        fifo_data_rx_valid;
    logic        fifo_data_rx_ready;
    logic [31:0] fifo_data_tx;
    logic        fifo_data_tx_valid;
    logic        fifo_data_tx_ready;

    logic [31:0] addr_sync;
    logic        addr_valid_sync;
    logic        cs_sync;

    logic        tx_done;
    logic        rd_wr_sync;

    logic [15:0] wrap_length;

    spi_device_rx u_rxreg
    (
        .sclk           ( spi_sclk       ),
        .cs             ( spi_cs         ),
        .sdi0           ( spi_sdi0       ),
        .sdi1           ( spi_sdi1       ),
        .sdi2           ( spi_sdi2       ),
        .sdi3           ( spi_sdi3       ),
        .en_quad_in     ( en_quad        ),
        .counter_in     ( rx_counter     ),
        .counter_in_upd ( rx_counter_upd ),
        .data           ( rx_data        ),
        .data_ready     ( rx_data_valid  )
    );

    spi_device_tx u_txreg
    (
        .test_mode      ( test_mode      ),
        .sclk           ( spi_sclk       ),
        .cs             ( spi_cs         ),
        .sdo0           ( spi_sdo0       ),
        .sdo1           ( spi_sdo1       ),
        .sdo2           ( spi_sdo2       ),
        .sdo3           ( spi_sdo3       ),
        .en_quad_in     ( en_quad        ),
        .counter_in     ( tx_counter     ),
        .counter_in_upd ( tx_counter_upd ),
        .data           ( tx_data        ),
        .data_valid     ( tx_data_valid  ),
        .done           ( tx_done        )
    );

    spi_device_controller u_device_sm
    (
        .sclk               ( spi_sclk           ),
        .sys_rstn           ( rst_ni             ),
        .cs                 ( spi_cs             ),
        .en_quad            ( en_quad            ),
        .pad_mode           ( spi_mode           ),
        .rx_counter         ( rx_counter         ),
        .rx_counter_upd     ( rx_counter_upd     ),
        .rx_data            ( rx_data            ),
        .rx_data_valid      ( rx_data_valid      ),
        .tx_counter         ( tx_counter         ),
        .tx_counter_upd     ( tx_counter_upd     ),
        .tx_data            ( tx_data            ),
        .tx_data_valid      ( tx_data_valid      ),
        .tx_done            ( tx_done            ),
        .ctrl_rd_wr         ( ctrl_rd_wr         ),
        .ctrl_addr          ( ctrl_addr          ),
        .ctrl_addr_valid    ( ctrl_addr_valid    ),
        .ctrl_data_rx       ( ctrl_data_rx       ),
        .ctrl_data_rx_valid ( ctrl_data_rx_valid ),
        .ctrl_data_rx_ready ( ctrl_data_rx_ready ),
        .ctrl_data_tx       ( ctrl_data_tx       ),
        .ctrl_data_tx_valid ( ctrl_data_tx_valid ),
        .ctrl_data_tx_ready ( ctrl_data_tx_ready ),
        .wrap_length        ( wrap_length        )
    );

    spi_device_dc_fifo u_dcfifo_rx
    (
        .clk_a   ( spi_sclk           ),
        .rstn_a  ( rst_ni             ),
        .data_a  ( ctrl_data_rx       ),
        .valid_a ( ctrl_data_rx_valid ),
        .ready_a ( ctrl_data_rx_ready ),
        .clk_b   ( clk_i              ),
        .rstn_b  ( rst_ni             ),
        .data_b  ( fifo_data_rx       ),
        .valid_b ( fifo_data_rx_valid ),
        .ready_b ( fifo_data_rx_ready )
    );

    spi_device_dc_fifo u_dcfifo_tx
    (
        .clk_a   ( clk_i              ),
        .rstn_a  ( rst_ni             ),
        .data_a  ( fifo_data_tx       ),
        .valid_a ( fifo_data_tx_valid ),
        .ready_a ( fifo_data_tx_ready ),
        .clk_b   ( spi_sclk           ),
        .rstn_b  ( rst_ni             ),
        .data_b  ( ctrl_data_tx       ),
        .valid_b ( ctrl_data_tx_valid ),
        .ready_b ( ctrl_data_tx_ready )
    );

    spi_device_tlul_plug u_spi_device_tlul_plug 
    (
        .clk_i              ( clk_i              ),
        .rst_ni             ( rst_ni             ),
        .rxtx_addr          ( addr_sync          ),
        .rxtx_addr_valid    ( addr_valid_sync    ),
        .rd_wr              ( rd_wr_sync         ),
        .fifo_data_rx       ( fifo_data_rx       ),
        .fifo_data_rx_valid ( fifo_data_rx_valid ),
        .fifo_data_rx_ready ( fifo_data_rx_ready ),
        .fifo_data_tx       ( fifo_data_tx       ),
        .fifo_data_tx_valid ( fifo_data_tx_valid ),
        .fifo_data_tx_ready ( fifo_data_tx_ready ),
        .tl_i               ( tl_i               ),
        .tl_o               ( tl_o               )
    );

    spi_device_syncro u_syncro
    (
        .sys_clk            ( clk_i           ),
        .rstn               ( rst_ni          ),
        .cs                 ( spi_cs          ),
        .address            ( ctrl_addr       ),
        .address_valid      ( ctrl_addr_valid ),
        .rd_wr              ( ctrl_rd_wr      ),
        .cs_sync            ( cs_sync         ),
        .address_sync       ( addr_sync       ),
        .address_valid_sync ( addr_valid_sync ),
        .rd_wr_sync         ( rd_wr_sync      )
    );

endmodule