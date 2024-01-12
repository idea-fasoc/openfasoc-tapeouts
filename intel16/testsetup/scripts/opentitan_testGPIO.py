from opentitan_ctrl import opentitan as ot_ctrl

def test_spi_then_gpio():
    ot = ot_ctrl()

    # write data 255 to gpio addr
    ot.write_mem(2, int("30010014", 16), 255)

    # read data from gpio, should be 255

def test_cpu_then_gpio():
    ot = ot_ctrl()

    # write data to instruction sram from addr 128
    ot.write_mem(2, 128, int("30010437", 16))
    ot.write_mem(2, 132, int("00a00613", 16))
    ot.write_mem(2, 136, int("01400693", 16))
    ot.write_mem(2, 140, int("00d60733", 16))
    ot.write_mem(2, 144, int("00e42a23", 16))

    # cpu start to fetch from instruction sram
    ot.fetch()

    # read data from gpio, should be 30

# test_spi_then_gpio()
# test_cpu_then_gpio()