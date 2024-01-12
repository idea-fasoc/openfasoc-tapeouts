module spi_device_tlul_plug
(
    input  logic                        clk_i,
    input  logic                        rst_ni,

    input  logic  [31:0]                rxtx_addr,
    input  logic                        rxtx_addr_valid,
    input  logic                        rd_wr, // 1: read, 0: write
    input  logic  [31:0]                fifo_data_rx,
    input  logic                        fifo_data_rx_valid,
    output logic                        fifo_data_rx_ready,
    output logic  [31:0]                fifo_data_tx,
    output logic                        fifo_data_tx_valid,
    input  logic                        fifo_data_tx_ready,

    // TL-UL interface
    input  tlul_pkg::tl_d2h_t           tl_i,
    output tlul_pkg::tl_h2d_t           tl_o
);

    enum logic [1:0] {ADDR, DATA, SEND, ERROR} state, state_next;

    logic [31:0] addr, addr_next;
    logic        we, we_next;
    logic [31:0] wdata, wdata_next;

    logic [ 6:0] wdata_intg, rdata_intg;
    logic [31:0] unused_data;
    logic        req, gnt;
    logic        err, intg_err;

    assign {wdata_intg, unused_data} = prim_secded_pkg::prim_secded_inv_39_32_enc('0);
    // since SPI clock will be faster than system
    // ignore tx rx ready now
    assign fifo_data_rx_ready = 1;

    always_comb begin
        state_next  = ERROR;
        addr_next   = addr;
        wdata_next  = 0;
        we_next     = 0;
        req         = 0;
        case (state)
            ADDR: begin
                if (rxtx_addr_valid && rd_wr) begin // read
                    state_next = SEND;
                    addr_next  = rxtx_addr;
                end else if (rxtx_addr_valid) begin // write
                    state_next = DATA;
                    addr_next  = rxtx_addr;
                end else begin
                    state_next = ADDR;
                end
            end
            DATA: begin
                if (fifo_data_rx_valid) begin
                    state_next = SEND;
                    we_next = 1;
                    wdata_next = fifo_data_rx;
                end else begin
                    state_next = DATA;
                end
            end
            SEND: begin
                state_next = ADDR;
                req = 1;
            end
        endcase
    end

    always @(posedge clk_i or negedge rst_ni) begin
        if (~rst_ni) begin
            state   <= ADDR;
            addr    <= 0;
            we      <= 0;
            wdata   <= 0;
        end else begin
            state   <= state_next;
            addr    <= addr_next;
            we      <= we_next;
            wdata   <= wdata_next;
        end
    end

    tlul_adapter_host u_tlul_adapter_host 
    (
        .clk_i         ( clk_i                     ),
        .rst_ni        ( rst_ni                    ),
        .req_i         ( req                       ),   
        .gnt_o         ( gnt                       ),
        .addr_i        ( addr                      ),
        .we_i          ( we                        ),
        .wdata_i       ( wdata                     ),
        .wdata_intg_i  ( wdata_intg                ),
        .be_i          ( 4'hf                      ),
        .instr_type_i  ( prim_mubi_pkg::MuBi4False ),
        .valid_o       ( fifo_data_tx_valid        ),
        .rdata_o       ( fifo_data_tx              ),
        .rdata_intg_o  ( rdata_intg                ),
        .err_o         ( err                       ),
        .intg_err_o    ( intg_err                  ),
        .tl_o          ( tl_o                      ),
        .tl_i          ( tl_i                      )
    );
    
endmodule 