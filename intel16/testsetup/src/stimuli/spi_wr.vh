localparam TRANSACTION_SIZE = 2;
// cmd = 2 (write mem) or 11 (read mem), 8 bits
// addr = 128, 132, 136 ..., 32 bits
// data = instruction memory load, 32 bits
reg [ 3:0]  cmd[TRANSACTION_SIZE-1:0];
reg [ 7:0] addr[TRANSACTION_SIZE-1:0];
reg [31:0] data[TRANSACTION_SIZE-1:0];

initial begin
    // command
    cmd[0] <= 2;
    cmd[1] <= 11;

    // address
    addr[0] <= 100;
    addr[1] <= 100;

    // data
    data[0] <= 100;
    data[1] <= 0;
end