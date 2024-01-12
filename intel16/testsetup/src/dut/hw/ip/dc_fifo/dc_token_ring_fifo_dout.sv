module dc_token_ring_fifo_dout(clk, rstn, data_async, write_token, read_pointer, data, valid, ready);

    parameter                   DATA_WIDTH = 10;
    parameter                   BUFFER_DEPTH = 8;

    input [DATA_WIDTH - 1 : 0]  data_async;

    input                       clk;
    input                       rstn;
    output [DATA_WIDTH - 1 : 0] data;
    output                      valid;
    input                       ready;

    input  [BUFFER_DEPTH - 1 : 0] write_token;
    output [BUFFER_DEPTH - 1 : 0] read_pointer;

    wire                        read_enable;
    wire                        stall;
    // Pointers to the write, read addresses (two-hot encoding)
    wire [BUFFER_DEPTH - 1 : 0] read_token;

    wire [BUFFER_DEPTH - 1 : 0]  write_token_dn;
    wire [BUFFER_DEPTH - 1 : 0]  empty;

    assign data = data_async;

    assign stall = ~ready;

    // FIFO read/write enable
    assign read_enable = (valid & ~stall);

    // Logic to compute the read, write pointers
    dc_token_ring
    #(
      .BUFFER_DEPTH ( BUFFER_DEPTH ),
      .RESET_VALUE  ( 'h3          )
    )
    read_tr
    (
      .clk    ( clk         ),
      .rstn   ( rstn        ),
      .enable ( read_enable ),
      .state  ( read_token  )
    );

    // Pointers to the write, read addresses (semi-accurate, leveraging the two-hot encoding for extra robustness)
    assign read_pointer  = {read_token[BUFFER_DEPTH - 3 : 0], read_token[BUFFER_DEPTH - 1 : BUFFER_DEPTH - 2]} &
                           {read_token[BUFFER_DEPTH - 4 : 0], read_token[BUFFER_DEPTH - 1 : BUFFER_DEPTH - 3]};

    // Empty detector; if any of the bits is 1, the synchronizer is empty
    dc_synchronizer
    #(
      .WIDTH       ( BUFFER_DEPTH ),
      .RESET_VALUE ( 'hc          )
    )
    empty_synch
    (
      .clk   ( clk            ),
      .rstn  ( rstn           ),
      .d_in  ( write_token    ),
      .d_out ( write_token_dn )
    );

    assign empty = ~write_token_dn & {write_token_dn[0], write_token_dn[BUFFER_DEPTH - 1 : 1]} & {read_pointer[1 : 0], read_pointer[BUFFER_DEPTH - 1 : 2]};
    assign valid = ~(|empty);

endmodule