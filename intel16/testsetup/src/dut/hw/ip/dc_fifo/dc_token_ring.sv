module dc_token_ring(clk, rstn, enable, state);

    parameter                     BUFFER_DEPTH = 8;
    parameter                     RESET_VALUE = 'h3;

    input                         clk;
    input                         rstn;
    input                         enable;
    output [BUFFER_DEPTH - 1 : 0] state;

    reg [BUFFER_DEPTH - 1 : 0]    state;
    reg [BUFFER_DEPTH - 1 : 0]    next_state;

    always @(posedge clk or negedge rstn)
    begin: update_state
        if (rstn == 1'b0)
            state <= RESET_VALUE;
        else
            state <= next_state;
    end

    always @(enable, state)
    begin
        if (enable)
            next_state = {state[BUFFER_DEPTH - 2 : 0], state[BUFFER_DEPTH - 1]};
        else
            next_state = state;
    end

endmodule