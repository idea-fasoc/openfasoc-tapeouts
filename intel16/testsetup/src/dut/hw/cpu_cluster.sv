module cpu_cluster (
    input  clk_i,
    input  rst_ni,

    input  ibex_pkg::ibex_mubi_t    fetch_enable_i,
    input  prim_mubi_pkg::mubi4_t   en_ifetch_i,

    // Host interface
    input  tlul_pkg::tl_d2h_t tl_core_i,
    output tlul_pkg::tl_h2d_t tl_core_o,

    // Device interface
    input  tlul_pkg::tl_h2d_t tl_instr_i,
    output tlul_pkg::tl_d2h_t tl_instr_o,
    input  tlul_pkg::tl_h2d_t tl_data_i,
    output tlul_pkg::tl_d2h_t tl_data_o
);
    //                  /----  ibex -|      /---->  ---->  ----\
    //   instr     <---| 2to1        |---> | 1to2          2to1 |---->  data
    //    sram          \----|              \----|  |--->  ----/        sram
    //                       |                   |  |
    //                 slave |            master |  | slave
    // ----------------------------------------------------------------------
    //                           main crossbar

    tlul_pkg::tl_d2h_t  ibex_i_i;
    tlul_pkg::tl_h2d_t  ibex_i_o;
    tlul_pkg::tl_d2h_t  ibex_d_i;
    tlul_pkg::tl_h2d_t  ibex_d_o;
    ibex_pkg::crash_dump_t crash_dump;
    logic               debug_fault_seen;
    logic               alert_minor;
    logic               alert_major_internal;
    logic               alert_major_bus;
    logic               core_sleep;

    tlul_pkg::tl_h2d_t  xbar_2to1_2_instr;
    tlul_pkg::tl_d2h_t  instr_2_xbar_2to1;
    tlul_pkg::tl_h2d_t  xbar_2to1_2_data;
    tlul_pkg::tl_d2h_t  data_2_xbar_2to1;

    tlul_pkg::tl_d2h_t  xbar_2to1_2_xbar_1to2;
    tlul_pkg::tl_h2d_t  xbar_1to2_2_xbar_2to1;

    ibex_tlul u_ibex_tlul (
        .clk_i                  (clk_i                               ),
        .rst_ni                 (rst_ni                              ),
        .test_en_i              (1'b1                                ),
        .ram_cfg_i              (prim_ram_1p_pkg::RAM_1P_CFG_DEFAULT ),
        .hart_id_i              (32'b0                               ),
        .boot_addr_i            (32'b0                               ),
        .tl_i_i                 (ibex_i_i                            ),
        .tl_i_o                 (ibex_i_o                            ),
        .tl_d_i                 (ibex_d_i                            ),
        .tl_d_o                 (ibex_d_o                            ),
        .irq_software_i         (1'b0                                ),
        .irq_timer_i            (1'b0                                ),
        .irq_external_i         (1'b0                                ),
        .irq_nm_i               (1'b0                                ),
        .debug_req_i            (1'b0                                ),
        .crash_dump_o           (crash_dump                          ),
        .debug_fault_seen_o     (debug_fault_seen                    ),
        .fetch_enable_i         (fetch_enable_i                      ),
        .alert_minor_o          (alert_minor                         ),
        .alert_major_internal_o (alert_major_internal                ),
        .alert_major_bus_o      (alert_major_bus                     ), 
        .core_sleep_o           (core_sleep                          ),
        .scan_rst_ni            (1'b1                                ),
        .scanmode_i             (prim_mubi_pkg::MuBi4False           )
    );

    mem_tlul u_imem_tlul (
        .clk_i       (clk_i             ),
        .rst_ni      (rst_ni            ),
        .en_ifetch_i (en_ifetch_i       ),
        .tl_i        (xbar_2to1_2_instr ),
        .tl_o        (instr_2_xbar_2to1 )
    );

    mem_tlul u_dmem_tlul (
        .clk_i       (clk_i            ),
        .rst_ni      (rst_ni           ),
        .en_ifetch_i (en_ifetch_i      ),
        .tl_i        (xbar_2to1_2_data ),
        .tl_o        (data_2_xbar_2to1 )
    );

    xbar_2to1 u_ixbar_2to1 (
        .clk_i      (clk_i                    ),
        .rst_ni     (rst_ni                   ),
        .tl_core_i  (ibex_i_o                 ),
        .tl_core_o  (ibex_i_i                 ),
        .tl_main_i  (tl_instr_i               ),
        .tl_main_o  (tl_instr_o               ),

        .tl_sram_o  (xbar_2to1_2_instr        ),
        .tl_sram_i  (instr_2_xbar_2to1        ),
        .scanmode_i (prim_mubi_pkg::MuBi4False)
    );

    xbar_2to1 u_dxbar_2to1 (
        .clk_i      (clk_i                     ),
        .rst_ni     (rst_ni                    ),
        .tl_core_i  (xbar_1to2_2_xbar_2to1     ),
        .tl_core_o  (xbar_2to1_2_xbar_1to2     ),
        .tl_main_i  (tl_data_i                 ),
        .tl_main_o  (tl_data_o                 ),

        .tl_sram_o  (xbar_2to1_2_data          ),
        .tl_sram_i  (data_2_xbar_2to1          ),
        .scanmode_i (prim_mubi_pkg::MuBi4False )
    );

    xbar_1to2 u_dxbar_1to2 (
        .clk_i      (clk_i                     ),
        .rst_ni     (rst_ni                    ),
        .tl_core_i  (ibex_d_o                  ),
        .tl_core_o  (ibex_d_i                  ),

        .tl_sram_o  (xbar_1to2_2_xbar_2to1     ),
        .tl_sram_i  (xbar_2to1_2_xbar_1to2     ),
        .tl_main_o  (tl_core_o                 ),
        .tl_main_i  (tl_core_i                 ),
        .scanmode_i (prim_mubi_pkg::MuBi4False )
    );

endmodule