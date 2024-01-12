module onehot_to_bin #(
    parameter int unsigned ONEHOT_WIDTH = 16,
    // Do Not Change
    parameter int unsigned BIN_WIDTH    = ONEHOT_WIDTH == 1 ? 1 : $clog2(ONEHOT_WIDTH)
)   (
    input  logic [ONEHOT_WIDTH-1:0] onehot,
    output logic [BIN_WIDTH-1:0]    bin
);

    for (genvar j = 0; j < BIN_WIDTH; j++) begin : gen_jl
        logic [ONEHOT_WIDTH-1:0] tmp_mask;
            for (genvar i = 0; i < ONEHOT_WIDTH; i++) begin : gen_il
                logic [BIN_WIDTH-1:0] tmp_i;
                assign tmp_i = i;
                assign tmp_mask[i] = tmp_i[j];
            end
        assign bin[j] = |(tmp_mask & onehot);
    end

// pragma translate_off
`ifndef VERILATOR
    assert final ($onehot0(onehot)) else
        $fatal(1, "[onehot_to_bin] More than two bit set in the one-hot signal");
`endif
// pragma translate_on
endmodule