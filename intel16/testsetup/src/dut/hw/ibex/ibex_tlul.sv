module ibex_tlul import ibex_pkg::*; #(
    parameter bit           PMPEnable        = 1'b0,
    parameter int unsigned  PMPGranularity   = 0,
    parameter int unsigned  PMPNumRegions    = 4,
    parameter int unsigned  MHPMCounterNum   = 0,
    parameter int unsigned  MHPMCounterWidth = 40,
    parameter bit           RV32E            = 1'b0,
    parameter rv32m_e       RV32M            = RV32MFast,
    parameter rv32b_e       RV32B            = RV32BNone,
    parameter regfile_e     RegFile          = RegFileFF,
    parameter bit           BranchTargetALU  = 1'b0,
    parameter bit           WritebackStage   = 1'b1,
    parameter bit           ICache           = 1'b0,
    parameter bit           ICacheECC        = 1'b0,
    parameter bit           BranchPredictor  = 1'b0,
    parameter bit           DbgTriggerEn     = 1'b0,
    parameter int unsigned  DbgHwBreakNum    = 1,
    parameter bit           SecureIbex       = 1'b0,
    parameter bit           ICacheScramble   = 1'b0,
    parameter lfsr_seed_t   RndCnstLfsrSeed  = RndCnstLfsrSeedDefault,
    parameter lfsr_perm_t   RndCnstLfsrPerm  = RndCnstLfsrPermDefault,
    parameter int unsigned  DmHaltAddr       = 32'h1A110808,
    parameter int unsigned  DmExceptionAddr  = 32'h1A110808,
    parameter logic [SCRAMBLE_KEY_W-1:0]   RndCnstIbexKey   = RndCnstIbexKeyDefault,
    parameter logic [SCRAMBLE_NONCE_W-1:0] RndCnstIbexNonce = RndCnstIbexNonceDefault
) (
    input                       clk_i,
    input                       rst_ni,

    input                       test_en_i,
    input   prim_ram_1p_pkg::ram_1p_cfg_t ram_cfg_i,
    input   logic [31:0]        hart_id_i,
    input   logic [31:0]        boot_addr_i,

    // instruction memory interface 
    input   tlul_pkg::tl_d2h_t  tl_i_i,
    output  tlul_pkg::tl_h2d_t  tl_i_o,

    // data memory interface 
    input   tlul_pkg::tl_d2h_t  tl_d_i,
    output  tlul_pkg::tl_h2d_t  tl_d_o,

    // Interrupt inputs
    input   logic               irq_software_i,
    input   logic               irq_timer_i,
    input   logic               irq_external_i,
    input   logic               irq_nm_i,

    // Debug interface
    input   logic               debug_req_i,
    output  crash_dump_t        crash_dump_o,
    output  logic               debug_fault_seen_o,

    // CPU Control Signals
    input   ibex_mubi_t         fetch_enable_i,
    output  logic               alert_minor_o,
    output  logic               alert_major_internal_o,
    output  logic               alert_major_bus_o, 
    output  logic               core_sleep_o,

    // dft bypass
    input scan_rst_ni,
    input prim_mubi_pkg::mubi4_t scanmode_i
);

// Instruction interface
logic        instr_req;
logic        instr_gnt;
logic        instr_rvalid;
logic [31:0] instr_addr;
logic [31:0] instr_rdata;
logic [ 6:0] instr_rdata_intg;
logic        instr_err;
logic [6:0]  instr_wdata_intg;
logic [31:0] unused_data;
tlul_pkg::tl_d2h_t  tl_i_i_enc;

assign {instr_wdata_intg, unused_data} = prim_secded_pkg::prim_secded_inv_39_32_enc('0);

// Data interface
logic        data_req;
logic        data_gnt;
logic        data_rvalid;
logic        data_we;
logic [3:0]  data_be;
logic [31:0] data_addr;
logic [31:0] data_wdata;
logic [ 6:0] data_wdata_intg;
logic [31:0] data_rdata;
logic [ 6:0] data_rdata_intg;
logic        data_err;
tlul_pkg::tl_d2h_t  tl_d_i_enc;

// Unused signals
logic        scramble_req;
  
ibex_top #(
    .PMPEnable        (PMPEnable        ),
    .PMPGranularity   (PMPGranularity   ),
    .PMPNumRegions    (PMPNumRegions    ),
    .MHPMCounterNum   (MHPMCounterNum   ),
    .MHPMCounterWidth (MHPMCounterWidth ),
    .RV32E            (RV32E            ),
    .RV32M            (RV32M            ),
    .RV32B            (RV32B            ),
    .RegFile          (RegFile          ),
    .BranchTargetALU  (BranchTargetALU  ),
    .WritebackStage   (WritebackStage   ),
    .ICache           (ICache           ),
    .ICacheECC        (ICacheECC        ),
    .BranchPredictor  (BranchPredictor  ),
    .DbgTriggerEn     (DbgTriggerEn     ),
    .DbgHwBreakNum    (DbgHwBreakNum    ),
    .SecureIbex       (SecureIbex       ),
    .ICacheScramble   (ICacheScramble   ),
    .RndCnstLfsrSeed  (RndCnstLfsrSeed  ),
    .RndCnstLfsrPerm  (RndCnstLfsrPerm  ),
    .DmHaltAddr       (DmHaltAddr       ),
    .DmExceptionAddr  (DmExceptionAddr  ),
    .RndCnstIbexKey   (RndCnstIbexKey   ),
    .RndCnstIbexNonce (RndCnstIbexNonce )
) u_ibex_top (
    // Clock and Reset
    .clk_i                  (clk_i                  ),
    .rst_ni                 (rst_ni                 ),
    .test_en_i              (test_en_i              ),
    .ram_cfg_i              (ram_cfg_i              ),
    .hart_id_i              (hart_id_i              ),
    .boot_addr_i            (boot_addr_i            ),
    // Instruction memory interface
    .instr_req_o            (instr_req              ),
    .instr_gnt_i            (instr_gnt              ),
    .instr_rvalid_i         (instr_rvalid           ),
    .instr_addr_o           (instr_addr             ),
    .instr_rdata_i          (instr_rdata            ),
    .instr_rdata_intg_i     (instr_rdata_intg       ),
    .instr_err_i            (instr_err              ),
    // Data memory interface
    .data_req_o             (data_req               ),
    .data_gnt_i             (data_gnt               ),
    .data_rvalid_i          (data_rvalid            ),
    .data_we_o              (data_we                ),
    .data_be_o              (data_be                ),
    .data_addr_o            (data_addr              ),
    .data_wdata_o           (data_wdata             ),
    .data_wdata_intg_o      (data_wdata_intg        ),
    .data_rdata_i           (data_rdata             ),
    .data_rdata_intg_i      (data_rdata_intg        ),
    .data_err_i             (data_err               ),
    // Interrupt inputs
    .irq_software_i         (irq_software_i         ),
    .irq_timer_i            (irq_timer_i            ),
    .irq_external_i         (irq_external_i         ),
    .irq_fast_i             (15'b0                  ),
    .irq_nm_i               (irq_nm_i               ),
    // Scrambling Interface
    .scramble_key_valid_i   (1'b0                   ),
    .scramble_key_i         (128'b0                 ),
    .scramble_nonce_i       (64'b0                  ),
    .scramble_req_o         (scramble_req           ),
    // Debug Interface
    .debug_req_i            (debug_req_i            ),
    .crash_dump_o           (crash_dump_o           ),
    .double_fault_seen_o    (double_fault_seen_o    ),
    // CPU Control Signals
    .fetch_enable_i         (fetch_enable_i         ),
    .alert_minor_o          (alert_minor_o          ),
    .alert_major_internal_o (alert_major_internal_o ),
    .alert_major_bus_o      (alert_major_bus_o      ),
    .core_sleep_o           (core_sleep_o           ),
    // DFT bypass controls
    .scan_rst_ni            (scan_rst_ni            )
);

tlul_rsp_intg_gen u_tlul_gen_instr (
    .tl_i   (tl_i_i),
    .tl_o   (tl_i_i_enc)
);

tlul_rsp_intg_gen u_tlul_gen_data (
    .tl_i   (tl_d_i),
    .tl_o   (tl_d_i_enc)
);

tlul_adapter_host #(
    .MAX_REQS(2)
) u_tlul_adapter_instr(
    .clk_i          (clk_i                    ),
    .rst_ni         (rst_ni                   ),
    .req_i          (instr_req                ),
    .gnt_o          (instr_gnt                ),
    .addr_i         (instr_addr               ),
    .we_i           (1'b0                     ),
    .wdata_i        (32'b0                    ),
    .wdata_intg_i   (instr_wdata_intg         ),
    .be_i           (4'hf                     ),
    .instr_type_i   (prim_mubi_pkg::MuBi4True ),
    .valid_o        (instr_rvalid             ),
    .rdata_o        (instr_rdata              ),
    .rdata_intg_o   (instr_rdata_intg         ),
    .err_o          (instr_err                ),
    .intg_err_o     (instr_intg_err           ),
    .tl_o           (tl_i_o                   ),
    .tl_i           (tl_i_i_enc               )
);

tlul_adapter_host #(
    .MAX_REQS(2)
) u_tlul_adapter_data(
    .clk_i          (clk_i                     ),
    .rst_ni         (rst_ni                    ),
    .req_i          (data_req                  ),
    .gnt_o          (data_gnt                  ),
    .addr_i         (data_addr                 ),
    .we_i           (data_we                   ),
    .wdata_i        (data_wdata                ),
    .wdata_intg_i   (data_wdata_intg           ),
    .be_i           (data_be                   ),
    .instr_type_i   (prim_mubi_pkg::MuBi4False ),
    .valid_o        (data_rvalid               ),
    .rdata_o        (data_rdata                ),
    .rdata_intg_o   (data_rdata_intg           ),
    .err_o          (data_err                  ),
    .intg_err_o     (data_intg_err             ),
    .tl_o           (tl_d_o                    ),
    .tl_i           (tl_d_i_enc                )
);

endmodule