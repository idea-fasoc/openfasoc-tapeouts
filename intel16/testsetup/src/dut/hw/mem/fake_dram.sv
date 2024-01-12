module fake_dram (

    input               CLK,
    input               EN,     // chip enable
    input               WEN,    // write enable  
    input  logic [31:0] WMASK,  // write mask
    input  logic [31:0] D,      // write data
    output logic [31:0] Q,      // read data
    input  logic [10:0] A       // address
);

localparam  DEPTH = 2**($bits(A));
logic [DEPTH-1:0][31:0] mem; // 8 KBytes

always @(posedge CLK) begin
    Q <= mem[A];
    if (~EN && ~WEN) begin
        for (int i=0; i<32; i=i+1) begin
            if (WMASK[i]) begin
                mem[A][i] <= D[i];
            end
        end
    end
end

endmodule 