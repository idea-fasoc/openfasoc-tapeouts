module sarcon_wrapper #(
    parameter N = 8
)(
    input rst_n,
    input clk,
    input comp,
    output [N-1:0] dq,
    output 
);

    wire latch_en;
    sarcon_sync #(.N(N)) u_con(
        .rst_n      ((~latch_en)&rst_n),
        .clk        (clk              ),
        .comp       (comp             ),
        .dq         (dq               ),
        .valid      (                 ),
        .last_cycle (latch_en         )
    );

endmodule /* sarcon_wrapper */
