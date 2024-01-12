module tb;
    `include "tb_spi_pkg.sv"

    localparam CLK_PERIOD       = 100;

    logic                       clk_i;
    logic                       rst_ni;

    logic                       fetch_enable_i;
    logic                       en_ifetch_i;    

    // SPI device interface
    logic                       spi_sclk;
    logic                       spi_cs;
    logic  [ 1:0]               spi_mode;
    logic                       spi_sdi0;
    logic                       spi_sdi1;
    logic                       spi_sdi2;
    logic                       spi_sdi3;
    logic                       spi_sdo0;
    logic                       spi_sdo1;
    logic                       spi_sdo2;
    logic                       spi_sdo3;

    // GPIO interface
    logic  [31:0]               gpio_o;
 
    logic  [31:0]               pattern[31:0];
    logic  [ 7:0]               cmd;
    logic  [31:0]               addr;
    logic  [31:0]               data;

    logic  [31:0]               wr_data, rd_data;
    logic                       rd_data_valid;
    logic  [33:0]               dummy;

    top_core u_top_core (
        .*
    );

    initial clk_i = 0;
    initial rst_ni = 0;
    always #(CLK_PERIOD/2.0) clk_i = ~clk_i;

    initial begin
        
        fetch_enable_i  = 0;
        en_ifetch_i     = 0;
        spi_sclk        = 0;
        spi_cs          = 1;
        spi_sdi0        = 0;
        spi_sdi1        = 0;
        spi_sdi2        = 0;
        spi_sdi3        = 0;
        dummy           = 0;
        
        @(negedge clk_i)
        rst_ni      = 1;

        cmd     = 2;   // write mem
        addr    = 128;
        wr_data = 128;
        `SPI_OUTPUT_MEM(cmd, addr, wr_data)

        #(CLK_PERIOD*10);

        cmd     = 11;  // read mem
        addr    = 128;
        `SPI_INPUT_MEM(cmd, addr, rd_data)

        if (rd_data == 128) begin
            $display("%c[1;32m",27);
            $display("SUCCESS\n");
            $display("%c[0m",27);
        end else begin
            $display("%c[1;31m",27);
            $display("FAILED\n");
            $display("%c[0m",27);
        end
    
	    $finish;
    end

endmodule