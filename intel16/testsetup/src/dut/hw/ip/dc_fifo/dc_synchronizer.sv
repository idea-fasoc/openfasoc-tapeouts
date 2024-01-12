module dc_synchronizer (clk, rstn, d_in, d_out);

    parameter WIDTH       = 1;
    parameter RESET_VALUE = 'h0;

    input                  clk;
    input                  rstn;
    input  [WIDTH - 1 : 0] d_in;
    output [WIDTH - 1 : 0] d_out;

    reg [WIDTH - 1 : 0]    d_middle;
    reg [WIDTH - 1 : 0]    d_out;

    always @(posedge clk  or negedge rstn)
    begin: update_state
        if (rstn == 1'b0)
        begin
            d_middle <= RESET_VALUE;
            d_out    <= RESET_VALUE;
        end
        else
        begin
            d_middle <= d_in;
            d_out    <= d_middle;
        end
    end

endmodule