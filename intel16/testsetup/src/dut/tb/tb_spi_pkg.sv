localparam SPI_CLK_PERIOD = 1000;

`define SPI_TX(cycle, pattern)              \
    for (int i=cycle-1; i>=0; i--) begin    \
        spi_sdi0 = pattern[i];              \
        #SPI_CLK_PERIOD;                    \
        spi_sclk = 1'b1;                    \
        #SPI_CLK_PERIOD;                    \
        spi_sclk = 1'b0;                    \
    end                                     

`define SPI_RX(cycle, pattern)              \
    for (int i=cycle-1; i>=0; i--) begin    \
        pattern[i] = spi_sdo0;              \
        #SPI_CLK_PERIOD;                    \
        spi_sclk = 1'b1;                    \
        #SPI_CLK_PERIOD;                    \
        spi_sclk = 1'b0;                    \
    end                                     \
    rd_data_valid = 1'b1;                   \
    #SPI_CLK_PERIOD;                        \
    rd_data_valid = 1'b0;                                                                            

`define SPI_OUTPUT_REG(cmd, data)           \
    spi_cs = 0;                             \
    #SPI_CLK_PERIOD;                        \
    `SPI_TX(8, cmd);                        \
    `SPI_TX(8, data);                       \
    #SPI_CLK_PERIOD;                        \
    spi_cs = 1;                             

`define SPI_INPUT_REG(cmd, data)            \
    spi_cs = 0;                             \
    #SPI_CLK_PERIOD;                        \
    `SPI_TX(8, cmd);                        \
    `SPI_TX(1, dummy);                      \
    `SPI_RX(32, data);                      \
    #SPI_CLK_PERIOD;                        \
    spi_cs = 1;  

`define SPI_OUTPUT_MEM(cmd, addr, data)     \
    spi_cs = 0;                             \
    #SPI_CLK_PERIOD;                        \
    `SPI_TX(8, cmd);                        \
    `SPI_TX(32, addr);                      \
    `SPI_TX(32, data);                      \
    #SPI_CLK_PERIOD;                        \
    spi_cs = 1;    

`define SPI_INPUT_MEM(cmd, addr, data)      \
    spi_cs = 0;                             \
    #SPI_CLK_PERIOD;                        \
    `SPI_TX(8, cmd);                        \
    `SPI_TX(32, addr);                      \
    `SPI_TX(34, dummy);                     \
    `SPI_RX(32, data);                      \
    #SPI_CLK_PERIOD;                        \
    spi_cs = 1;                             
