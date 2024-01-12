from opentitan_ctrl import opentitan as ot_ctrl

def readFile(file_name):
    with open(file_name, 'r') as file:
        return file.readlines()

def test_gpio():
    ot = ot_ctrl()

    # write data to instruction sram from addr 128
    addr = 128
    command = readFile("../src/dut/sw/hex/gpio.hex")
    for hex in command[:-1]: # skip last 00000fff
        ot.write_mem(2, addr, int(hex, 16))
        addr += 4

    # cpu start to fetch from instruction sram
    ot.fetch()

    # read data from gpio, should be 30

def test_one():
    ot = ot_ctrl()

    addr = 128
    command = readFile("../src/dut/sw/hex/one.hex")
    for hex in command[:-1]: # skip last 00000fff
        ot.write_mem(2, addr, int(hex, 16))
        addr += 4

    ot.fetch()
    # read data from gpio, should be 255

def test_fib():
    ot = ot_ctrl()

    addr = 128
    command = readFile("../src/dut/sw/hex/fib.hex")
    for hex in command[:-1]: # skip last 00000fff
        ot.write_mem(2, addr, int(hex, 16))
        addr += 4

    ot.fetch()
    # read data from gpio, should be 987

def test_saxpy():
    ot = ot_ctrl()

    addr = 128
    command = readFile("../src/dut/sw/hex/saxpy.hex")
    for hex in command[:-1]: # skip last 00000fff
        ot.write_mem(2, addr, int(hex, 16))
        addr += 4

    ot.fetch()
    # read data from gpio, should be 30001

# test_gpio()
# test_one()
# test_fib()
# test_saxpy()