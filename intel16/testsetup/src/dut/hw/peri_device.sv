module peri_device (
    input  clk_i,
    input  rst_ni,

    // Host interface
    input  tlul_pkg::tl_h2d_t tl_peri_device_i,
    output tlul_pkg::tl_d2h_t tl_peri_device_o,

    // GPIO interface
    output logic [31:0] gpio_o
);

    tlul_pkg::tl_h2d_t  tl_peri_device_i_enc;

    tlul_pkg::tl_h2d_t  xbar_2_uart;
    tlul_pkg::tl_d2h_t  uart_2_xbar;
    tlul_pkg::tl_h2d_t  xbar_2_gpio;
    tlul_pkg::tl_d2h_t  gpio_2_xbar;
    tlul_pkg::tl_h2d_t  xbar_2_spi;
    tlul_pkg::tl_d2h_t  spi_2_xbar;
    tlul_pkg::tl_h2d_t  xbar_2_i2c;
    tlul_pkg::tl_d2h_t  i2c_2_xbar;
    tlul_pkg::tl_h2d_t  xbar_2_plic;
    tlul_pkg::tl_d2h_t  plic_2_xbar;

    // remove assignment when connecting new module
    assign uart_2_xbar = tlul_pkg::TL_D2H_DEFAULT;
    assign spi_2_xbar  = tlul_pkg::TL_D2H_DEFAULT;
    assign i2c_2_xbar  = tlul_pkg::TL_D2H_DEFAULT;
    assign plic_2_xbar = tlul_pkg::TL_D2H_DEFAULT;

    logic [31:0] intr_gpio;
    logic [31:0] gpio_i;
    logic [31:0] gpio_en_o;

    prim_alert_pkg::alert_rx_t [gpio_reg_pkg::NumAlerts-1:0] alert_rx;
    prim_alert_pkg::alert_tx_t [gpio_reg_pkg::NumAlerts-1:0] alert_tx;

    assign alert_rx = prim_alert_pkg::ALERT_RX_DEFAULT;

    tlul_cmd_intg_gen u_tlul_cmd_intg_gen (
        .tl_i   (tl_peri_device_i     ),
        .tl_o   (tl_peri_device_i_enc )
    );

    xbar_periph u_xbar_periph (
        .clk_i          (clk_i                     ),
        .rst_ni         (rst_ni                    ),
        
        .tl_peri_host_i (tl_peri_device_i_enc      ),
        .tl_peri_host_o (tl_peri_device_o          ),

        .tl_uart_o      (xbar_2_uart               ),
        .tl_uart_i      (uart_2_xbar               ),
        .tl_gpio_o      (xbar_2_gpio               ),
        .tl_gpio_i      (gpio_2_xbar               ),
        .tl_spi_o       (xbar_2_spi                ),
        .tl_spi_i       (spi_2_xbar                ),
        .tl_i2c_o       (xbar_2_i2c                ),
        .tl_i2c_i       (i2c_2_xbar                ),
        .tl_plic_o      (xbar_2_plic               ),
        .tl_plic_i      (plic_2_xbar               ),

        .scanmode_i     (prim_mubi_pkg::MuBi4False )
    );

    gpio u_gpio (
        .clk_i          (clk_i            ),
        .rst_ni         (rst_ni           ),
        .tl_i           (xbar_2_gpio      ),
        .tl_o           (gpio_2_xbar      ),

        .intr_gpio_o    (intr_gpio        ),
        .alert_rx_i     (alert_rx         ),
        .alert_tx_o     (alert_tx         ),
        .cio_gpio_i     (gpio_i           ),
        .cio_gpio_o     (gpio_o           ),
        .cio_gpio_en_o  (gpio_en_o        )
    );

endmodule