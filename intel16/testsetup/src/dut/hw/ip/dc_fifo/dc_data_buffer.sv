module dc_data_buffer
#(
    parameter DATA_WIDTH   = 32,
    parameter BUFFER_DEPTH = 8
)(
    input  logic                      clk,
    input  logic                      rstn,
    input  logic                      write_enable,
    input  logic  [BUFFER_DEPTH-1:0]  write_pointer,
    input  logic  [DATA_WIDTH-1:0]    write_data,
    input  logic  [BUFFER_DEPTH-1:0]  read_pointer,
    output logic  [DATA_WIDTH-1:0]    read_data
);

    logic [BUFFER_DEPTH-1:0][DATA_WIDTH-1:0]       data;
    logic  [$clog2(BUFFER_DEPTH)-1:0]  write_pointer_bin;
    logic  [$clog2(BUFFER_DEPTH)-1:0]  read_pointer_bin;


    onehot_to_bin #(.ONEHOT_WIDTH(BUFFER_DEPTH)) WPRT_OH_BIN (.onehot(write_pointer), .bin(write_pointer_bin));
    onehot_to_bin #(.ONEHOT_WIDTH(BUFFER_DEPTH)) RPRT_OH_BIN (.onehot(read_pointer),  .bin(read_pointer_bin));


    always_ff @(posedge clk, negedge rstn)
    begin: read_write_data
        if (rstn == 1'b0)
                data <= '0;
        else
            if (write_enable)
                data[write_pointer_bin] <= write_data;
    end

    assign read_data = data[read_pointer_bin];

endmodule