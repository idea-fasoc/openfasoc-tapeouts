from opentitan_ctrl import opentitan as ot_ctrl

def test_write():
    ot = ot_ctrl()

    # write data 1 to reg0
    # should enable qspi mode and see spi_mode to be 2
    ot.write_reg(1, 1)

def test_read():
    ot = ot_ctrl()

    # read data 32 from reg1
    data = ot.read_reg(7)
    print(data)

def test_write_then_read():
    ot = ot_ctrl()

    # write data 66 to reg1
    ot.write_reg(17, 66)

    # read data 66 from reg1
    data = ot.read_reg(7)
    print(data)

def test_sram():
    ot = ot_ctrl()
    
    # write data 128 to sram addr 128
    ot.write_mem(2, 128, 128)

    # read data 128 from sram addr 128
    data = ot.read_mem(11, 128)
    print(data)

# test_write()
# test_read()
# test_write_then_read()
# test_sram()