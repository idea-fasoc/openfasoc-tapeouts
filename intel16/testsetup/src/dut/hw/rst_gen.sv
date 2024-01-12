module rst_gen (
    input  clk_i,
    input  rst_ni,
    output rst_no
);

    logic sync_io_reg0;
    logic sync_io_reg1;
    logic sync_io_reg2;
    logic sync_io_reg3;
    logic sync_io_reg4;

    assign rst_no = sync_io_reg4;

    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (~rst_ni) begin
            sync_io_reg0 <= 1'b0;
            sync_io_reg1 <= 1'b0;
            sync_io_reg2 <= 1'b0;
            sync_io_reg3 <= 1'b0;
            sync_io_reg4 <= 1'b0;
        end
        else begin
            sync_io_reg0 <= 1'b1;
            sync_io_reg1 <= sync_io_reg0;
            sync_io_reg2 <= sync_io_reg1;
            sync_io_reg3 <= sync_io_reg2;
            sync_io_reg4 <= sync_io_reg3;
        end
    end

endmodule