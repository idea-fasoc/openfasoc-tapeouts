module mem_tlul (
    input  clk_i,
    input  rst_ni,

    input  prim_mubi_pkg::mubi4_t   en_ifetch_i,

    // TL-UL interface
    input  tlul_pkg::tl_h2d_t       tl_i,
    output tlul_pkg::tl_d2h_t       tl_o
);

logic                       req;
logic   [10:0]              addr;
logic   [31:0]              wdata;
logic                       wen;
logic   [31:0]              wmask;
logic   [31:0]              rdata; 
logic                       rvalid;
prim_mubi_pkg::mubi4_t      req_type;
logic                       intg_error;

always_ff @(posedge clk_i or negedge rst_ni) begin
    if (~rst_ni) begin
        rvalid          <= 'b0;
    end else begin 
        rvalid          <= req && ~wen;
    end
end 
    
// 8K bytes of memory
`ifdef SYN
ip224uhdlp1p11rf_2048x32m8b2c1s0_t0r0p0d0a1m1h u_sram (
    .clk            (clk_i  ), //Input Clock
    .ren            (~wen   ), //Read Enable
    .wen            (wen    ), //Write Enable
    .adr            (addr   ), //Input Address
    .mc             (3'b0   ), //Controls extending write duration
    .mcen           (1'b0   ), //Enable read margin control 
    .clkbyp         (1'b0   ), //clock bypass enable  
    .din            (wdata  ), //Input Write Data 
    .wa             (2'b0   ),
    .wpulse         (2'b0   ),
    .wpulseen       (1'b1   ),
    .fwen           (1'b0   ),
    .q              (rdata  )
);
`else
fake_dram u_fake_dram (
    .CLK    (clk_i  ),
    .EN     (~req   ),  // chip enable
    .WEN    (~wen   ),  // write enable
    .WMASK  (wmask  ),  // write mask
    .D      (wdata  ),  // write data
    .Q      (rdata  ),  // read data
    .A      (addr   )   // address
);
`endif
  
tlul_adapter_sram #(
    .SramAw             (11),
    .SramDw             (32), 
    .Outstanding        (1),  
    .ByteAccess         (1),
    .ErrOnWrite         (0),
    .ErrOnRead          (0),
    .CmdIntgCheck       (0),  
    .EnableRspIntgGen   (0),  
    .EnableDataIntgGen  (0),  
    .EnableDataIntgPt   (0),
    .SecFifoPtr         (0)

) u_tlul_adapter_sram (
    .clk_i          (clk_i          ),
    .rst_ni         (rst_ni         ),
    .tl_i           (tl_i           ),
    .tl_o           (tl_o           ), 
    .en_ifetch_i    (en_ifetch_i    ),
    .req_o          (req            ),
    .req_type_o     (req_type       ),
    .gnt_i          (1'b1           ),
    .we_o           (wen            ),
    .addr_o         (addr           ),
    .wdata_o        (wdata          ),
    .wmask_o        (wmask          ),
    .intg_error_o   (intg_error     ),
    .rdata_i        (rdata          ),
    .rvalid_i       (rvalid         ),
    .rerror_i       (2'b0           )
);

endmodule