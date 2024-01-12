module top_core (
    input  logic        clk_i,
    input  logic        rst_ni,

    input  logic        fetch_enable_i,
    input  logic        en_ifetch_i,

    // SPI device interface
    input  logic        spi_sclk,
    input  logic        spi_cs,
    output logic [1:0]  spi_mode,
    input  logic        spi_sdi0,
    input  logic        spi_sdi1,
    input  logic        spi_sdi2,
    input  logic        spi_sdi3,
    output logic        spi_sdo0,
    output logic        spi_sdo1,
    output logic        spi_sdo2,
    output logic        spi_sdo3,

    // GPIO interface
    output logic [31:0] gpio_o
);

    logic rst_no;

    tlul_pkg::tl_h2d_t core_2_xbar_main;
    tlul_pkg::tl_d2h_t xbar_main_2_core;
    tlul_pkg::tl_h2d_t spi_2_xbar_main;
    tlul_pkg::tl_d2h_t xbar_main_2_spi;
    tlul_pkg::tl_h2d_t jtag_2_xbar_main;
    tlul_pkg::tl_d2h_t xbar_main_2_jtag;

    tlul_pkg::tl_h2d_t xbar_main_2_instr;
    tlul_pkg::tl_d2h_t instr_2_xbar_main;
    tlul_pkg::tl_h2d_t xbar_main_2_data;
    tlul_pkg::tl_d2h_t data_2_xbar_main;
    tlul_pkg::tl_h2d_t xbar_main_2_peri_device;
    tlul_pkg::tl_d2h_t peri_device_2_xbar_main;

    // remove assignment when connecting new module
    assign jtag_2_xbar_main = tlul_pkg::TL_H2D_DEFAULT;

    ibex_pkg::ibex_mubi_t   fetch_enable;
    prim_mubi_pkg::mubi4_t  en_ifetch;

    assign fetch_enable = (fetch_enable_i) ? ibex_pkg::IbexMuBiOn : ibex_pkg::IbexMuBiOff;
    assign en_ifetch    = (en_ifetch_i)    ? prim_mubi_pkg::MuBi4True : prim_mubi_pkg::MuBi4False;

    // reset synchronizer
    rst_gen u_rst_gen (
        .clk_i  (clk_i  ),
        .rst_ni (rst_ni ),
        .rst_no (rst_no )
    );

    // 3 master, 3 slave
    xbar_main u_xbar_main 
    (
        .clk_i              (clk_i                    ),
        .rst_ni             (rst_no                   ),

        .tl_core_i          (core_2_xbar_main         ),
        .tl_core_o          (xbar_main_2_core         ),
        .tl_spi_i           (spi_2_xbar_main          ),
        .tl_spi_o           (xbar_main_2_spi          ),
        .tl_jtag_i          (jtag_2_xbar_main         ),
        .tl_jtag_o          (xbar_main_2_jtag         ),

        .tl_instr_o         (xbar_main_2_instr        ),
        .tl_instr_i         (instr_2_xbar_main        ),
        .tl_data_o          (xbar_main_2_data         ),
        .tl_data_i          (data_2_xbar_main         ),
        .tl_peri_device_o   (xbar_main_2_peri_device  ),
        .tl_peri_device_i   (peri_device_2_xbar_main  ),
        
        .scanmode_i         (prim_mubi_pkg::MuBi4False)
    );

    // 1 master
    spi_device_tlul u_spi_device_tlul 
    (
        .clk_i      (clk_i           ),
        .rst_ni     (rst_no          ),
        .test_mode  (1'b1            ),
        .spi_sclk   (spi_sclk        ),
        .spi_cs     (spi_cs          ),
        .spi_mode   (spi_mode        ),
        .spi_sdi0   (spi_sdi0        ),
        .spi_sdi1   (spi_sdi1        ),
        .spi_sdi2   (spi_sdi2        ),
        .spi_sdi3   (spi_sdi3        ),
        .spi_sdo0   (spi_sdo0        ),
        .spi_sdo1   (spi_sdo1        ),
        .spi_sdo2   (spi_sdo2        ),
        .spi_sdo3   (spi_sdo3        ),
        .tl_i       (xbar_main_2_spi ),
        .tl_o       (spi_2_xbar_main )
    );

    // 1 master, 2 slave
    cpu_cluster u_cpu_cluster (
        .clk_i              (clk_i             ),
        .rst_ni             (rst_no            ),

        .fetch_enable_i     (fetch_enable      ),
        .en_ifetch_i        (en_ifetch         ),

        .tl_core_i          (xbar_main_2_core  ),
        .tl_core_o          (core_2_xbar_main  ),

        .tl_instr_i         (xbar_main_2_instr ),
        .tl_instr_o         (instr_2_xbar_main ),
        .tl_data_i          (xbar_main_2_data  ),
        .tl_data_o          (data_2_xbar_main  )
    );

    // 1 slave
    peri_device u_peri_device (
        .clk_i              (clk_i                    ),
        .rst_ni             (rst_no                   ),

        .tl_peri_device_i   (xbar_main_2_peri_device  ),
        .tl_peri_device_o   (peri_device_2_xbar_main  ),

        .gpio_o             (gpio_o                   )
    );

endmodule