import time
from pyftdi.spi import SpiController

"""
FT232H Device USB Address (SPI)
"""
ADDR_SH1122 = "ftdi://ftdi:232h:00:ff/1"

"""
Register Mapping
"""
SET_COL_ADR_LSB     = 0x00
SET_COL_ADR_MSB     = 0X10
SET_DISP_START_LINE = 0X40
SET_CONTRAST        = 0X81
SET_SEG_REMAP       = 0XA0
SET_ENTIRE_ON       = 0XA4
SET_NORM_INV        = 0XA6
SET_MUX_RATIO       = 0XA8
SET_CTRL_DCDC       = 0XAD
SET_DISP            = 0XAE
SET_ROW_ADR         = 0XB0
SET_COM_OUT_DIR     = 0XC0
SET_DISP_OFFSET     = 0XD3
SET_DISP_CLK_DIV    = 0XD5
SET_PRECHARGE       = 0xD9
SET_VCOM_DESEL      = 0xDB
SET_VSEG_LEVEL      = 0XDC
SET_DISCHARGE_LEVEL = 0X30

class sh1122():
    def __init__(self, addr=ADDR_SH1122, freq=10e6, width=256, height=64):
        self.addr = addr
        self.freq = freq
        self.width = width
        self.height = height
        self.buffer = bytearray((self.height // 2) * self.width)
        """
        Board Pinout:
            C7-C0,
            D7-D6,
            D5:     RST.    Default 1
            D4:     DC.     Default 0
            D3:     CS.     Default 1
            D2,
            D1:     SDA.    Default 0
            D0:     SCL.    Default 0
        """
        self.ctrl = SpiController()
        self.ctrl.configure(self.addr, frequency=self.freq)
        self.spi = self.ctrl.get_port(cs=0)
        self.gpio = self.ctrl.get_gpio()
        self.gpio.set_direction(0x00f0, 0x00f0)
        self.gpio.write(0x0020)
        # reset chip
        self.lcd_reset(0)
        time.sleep(1)
        # release reset
        self.lcd_reset(1)
        time.sleep(1)
        self.init_display()

    def init_display(self):
        for cmd in (
            SET_DISP | 0x00,  # off
            # address setting
            SET_COL_ADR_LSB,
            SET_COL_ADR_MSB,  # horizontal
            # resolution and layout
            SET_DISP_START_LINE | 0x00,
            SET_SEG_REMAP,
            SET_MUX_RATIO,
            self.height - 1,
            SET_COM_OUT_DIR,  # scan from COM0 to COM[N]
            SET_DISP_OFFSET,
            0x00,
            # display
            SET_CONTRAST,
            0x80,  # median
            SET_ENTIRE_ON,  # output follows RAM contents
            SET_NORM_INV,  # not inverted
            SET_DISP | 0x01,
        ):  # on
            self.write_cmd(cmd)
        self.show()

    def reset(self):
        self.gpio.write(0x0020)
    
    def close(self):
        self.ctrl.close()

    # active low
    def lcd_reset(self, val):
        cur_state = self.gpio.read(True)
        cur_state &= ~(0b1 << 5)
        self.gpio.write(cur_state | val << 5)

    def lcd_dc(self, val):
        cur_state = self.gpio.read(True)
        cur_state &= ~(0b1 << 4)
        self.gpio.write(cur_state | val << 4)

    def power_off(self):
        self.write_cmd(SET_DISP | 0x00)

    def power_on(self):
        self.write_cmd(SET_DISP | 0x01)

    def set_contrast(self, contrast):
        self.write_cmd(SET_CONTRAST)
        self.write_cmd(contrast)

    def set_invert(self, invert):
        self.write_cmd(SET_NORM_INV | (invert & 1))

    def show(self):
        self.write_cmd(SET_COL_ADR_LSB)
        self.write_cmd(SET_COL_ADR_MSB)
        self.write_cmd(SET_ROW_ADR)
        self.write_data(self.buffer)

    def write_cmd(self, cmd):
        self.lcd_dc(0)
        self.spi.write(bytearray([cmd]))

    def write_data(self, buf):
        self.lcd_dc(1)
        self.spi.write(buf)