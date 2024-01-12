import time
from pyftdi.spi import SpiController

"""
FT232H Device USB Address (SPI)
"""
ADDR_OPENTITAN = "ftdi://ftdi:232h:00:ff/1"

"""
The OpenTian SoC Chip Control Class
"""
class opentitan():
    def __init__(self, addr=ADDR_OPENTITAN, freq=10e6):
        self.addr = addr
        self.freq = freq
        """
        Board Pinout:
            C7-C3,
            C2:     en_iftch_i.     Deafult 0
            C1:     fetch_enable_i. Default 0
            C0:     rst_ni.         Deafult 1
            D7-D4,
            D3:     spi_cs.         Default 1
            D2:     spi_sdo0.
            D1:     spi_sdi0.       Default 0
            D0:     spi_sclk.       Default 0
        """
        self.ctrl = SpiController()
        self.ctrl.configure(self.addr, frequency=self.freq)
        self.spi = self.ctrl.get_port(cs=0)
        self.gpio = self.ctrl.get_gpio()
        self.gpio.set_direction(0xff00, 0xff00)
        self.gpio.write(0x0100)
        # reset chip
        self.chip_reset(0)
        time.sleep(1)
        # release reset
        self.chip_reset(1)
        time.sleep(1)

    def fetch(self):
        # start fetch
        time.sleep(1)
        self.start(1)
        # release fetch
        time.sleep(1)
        self.start(0)

    def reset(self):
        self.gpio.write(0x0100)

    def close(self):
        self.ctrl.close()

    # active low
    def chip_reset(self, val):
        cur_state = self.gpio.read(True)
        cur_state &= ~(0b1 << 8)
        self.gpio.write(cur_state | val << 8)

    def start(self, val):
        cur_state = self.gpio.read(True)
        cur_state &= ~(0b11 << 9)
        self.gpio.write(cur_state | val << 9 | val << 10)

    def write_mem(self, cmd, addr, data):
        transaction = toByte(1, cmd) + toByte(4, addr) + toByte(4, data)
        self.spi.write(transaction)
    
    def read_mem(self, cmd, addr, dummy=0):
        transaction = toByte(1, cmd) + toByte(4, addr) + toByte(9, dummy) # write 5 bytes, read 4 bytes
        data = self.spi.exchange(transaction, duplex=True, droptail=6) # 34 cycles dummy
        return toInt(data) >> 6

    def write_reg(self, cmd, data):
        transaction = toByte(1, cmd) + toByte(1, data)
        self.spi.write(transaction)
    
    def read_reg(self, cmd, dummy=0):
        transaction = toByte(1, cmd) + toByte(5, dummy) # write 1 byte, read 4 bytes
        data = self.spi.exchange(transaction, duplex=True, droptail=7) # 1 cycle dummy
        return toInt(data) >> 7
    
"""
Some useful functions
"""
def toByte(bit, data):
    return data.to_bytes(bit, byteorder='big')

def toInt(data):
    return int.from_bytes(data, byteorder='big')