from pyftdi.usbtools import UsbTools
from pyftdi.gpio import GpioMpsseController
from pyftdi.spi import SpiController

"""
FT232H Device Pinout

========== ======= ====== ======== ========== ======
   BUS     BitBang  UART    I2C       SPI      JTAG 
========== ======= ====== ======== ========== ======
  ADBUS0    GPIO0    TxD    SCK      SCLK       TCK   
  ADBUS1    GPIO1    RxD    SDA/O    MOSI       TDI   
  ADBUS2    GPIO2    RTS    SDA/I    MISO       TDO   
  ADBUS3    GPIO3    CTS    GPIO3    CS0        TMS   
  ADBUS4    GPIO4    DTR    GPIO4    CS1/GPIO4       
  ADBUS5    GPIO5    DSR    GPIO5    CS2/GPIO5        
  ADBUS6    GPIO6    DCD    GPIO6    CS3/GPIO6        
  ADBUS7    GPIO7    RI     RSCK     CS4/GPIO7  RCLK 
  ACBUS0    GPIO8           GPIO8    GPIO8
  ACBUS1    GPIO9           GPIO9    GPIO9
  ACBUS2    GPIO10          GPIO10   GPIO10
  ACBUS3    GPIO11          GPIO11   GPIO11
  ACBUS4    GPIO12          GPIO12   GPIO12
  ACBUS5    GPIO13          GPIO13   GPIO13
  ACBUS6    GPIO14          GPIO14   GPIO14
  ACBUS7    GPIO15          GPIO15   GPIO15

"""

def find_usb_addr():
    """"
    Check the addresses of each bridge board
    """

    # GPIO Board USB addresses
    FT232H_list = UsbTools.find_all([(0x403, 0x6014)])
    addr = []
    for i in range(len(FT232H_list)):
        addr.append("ftdi://ftdi:232h:" + hex(FT232H_list[i][0].bus)[2:].zfill(2) + ":"+hex(FT232H_list[i][0].address)[2:].zfill(2)+"/1")
        
        # Print out bridge address
        print("USB Address of board " + str(i) + " is: " + addr[i])

    return addr

def simple_gpio_write(addr, data):
    """
    Simple GPIO write two bytes data to a board according to address

    Parameters:
        direction     (16 bits): 0 for input, 1 for output
        write bitmap  (16 bits): [C7-C0, D7-D0]
    """
    # Initialize GPIO
    gpio = GpioMpsseController()
    gpio.configure(addr, direction=0xffff, frequency=1e6)
    
    # Write data
    gpio.write(data)
    gpio.close()

def check_gpio_board_address():
    """
    Check which address maps to which board on gpio mpde

    In this example, we have two FT232H boards connected to PC
    """
    addr = find_usb_addr()
    # Write board 1 C7-C0, D7-D0 to 0
    simple_gpio_write(addr[0], 0x0000)
    # Write board 2 C7-C0, D7-D0 to 0
    simple_gpio_write(addr[1], 0x0000)

def simple_spi_write(addr, data):
    """
    Simple SPI write one byte data to a board according to address
    """
    # Initalize SPI
    spi = SpiController()
    spi.configure(addr, frequency=1e6)
    slave = spi.get_port(cs=0)
    slave.write(data)
    spi.close()

def check_simple_spi_2_logic_analyzer():
    """
    Check SPI transaction send correctly
    Also check which address maps to which board on spi mode

    In this example, we have saleae logic analyzer connected to the FT232H board
    """
    addr = find_usb_addr()
    # Write board 1 one byte transaction 0x12
    simple_spi_write(addr[0], b'\x12')
    # Write board 2 one byte transaction 0x34
    simple_spi_write(addr[1], b'\x34')

def spi_write_4byte(slave, data):
    """
    SPI write consecutive 4 bytes data to a board according to address
    """
    # Initalize SPI
    data = data.to_bytes(4, byteorder='big')
    slave.write(data)

def check_continuous_spi():
    """
    Check consecutive 4 bytes SPI transactions send correctly
    """
    addr = find_usb_addr()
    # Initalize SPI
    spi = SpiController()
    spi.configure(addr[0], frequency=1e6)
    slave = spi.get_port(cs=0)

    # Write board 1 three 4 bytes transactions 100(0x64), 200(0xc8), 300(0x12c)
    spi_write_4byte(slave, 100)
    spi_write_4byte(slave, 200)
    spi_write_4byte(slave, 300)
    spi.close()

def spi2chip(slave, cmd, addr, data):
    """
    Actual SPI transaction send to chip

    Parameters:
        cmd:   8 bits, command for spi_device_tlul, 2 for write_mem, 11 for read_mem
        addr: 32 bits, address for memory mapping
        data: 32 bits, data for spi transaction
    """
    # Convert to bytes for each parameter
    cmd  = cmd.to_bytes(1, byteorder='big')
    addr = addr.to_bytes(4, byteorder='big')
    data = data.to_bytes(4, byteorder='big')
    slave.write(cmd)
    slave.write(addr)
    slave.write(data)
    
def check_spi2chip():
    """
    Check SPI transaction send correctly
    """
    addr = find_usb_addr()
    # Initalize SPI
    spi = SpiController()
    spi.configure(addr[0], frequency=1e6)
    slave = spi.get_port(cs=0)
    # Write address 100 data 100
    spi2chip(slave, 2, 100, 100)
    spi.close()

def chip2spi(slave, cmd, addr, dummy=0):
    """
    Actual SPI transaction send from chip

    Parameters:
        cmd:   8 bits, command for spi_device_tlul, 2 for write_mem, 11 for read_mem
        addr: 32 bits, address for memory mapping
        data: 32 bits, data for spi transaction
    """
    # Convert to bytes for each parameter
    cmd   = cmd.to_bytes(1, byteorder='big')
    addr  = addr.to_bytes(4, byteorder='big')
    dummy = dummy.to_bytes(5, byteorder='big')
    slave.write(cmd)
    slave.write(addr)
    slave.write(dummy, droptail=6)
    data = slave.read(4)

    return data

def check_chip2spi():
    """
    Check SPI transaction receive correctly
    """
    addr = find_usb_addr()
    # Initalize SPI
    spi = SpiController()
    spi.configure(addr[0], frequency=1e6)
    slave = spi.get_port(cs=0)
    # Read address 100 data 100
    data = chip2spi(slave, 11, 100)
    print(int.from_bytes(data, byteorder='big'))
    spi.close()

def check_spi_plus_gpio():
    """
    Check GPIO in SPI mode
    """
    addr = find_usb_addr()
    # Initalize SPI
    spi = SpiController()
    spi.configure(addr[0], frequency=1e6)
    slave = spi.get_port(cs=0)
    gpio = spi.get_gpio()
    # Set C7-C0 to output
    gpio.set_direction(0xff00, 0xff00)
    gpio.write(0x0000)
    spi.close()

# check_gpio_board_address()
# check_simple_spi_2_logic_analyzer()
# check_continuous_spi()
# check_spi2chip()
# check_chip2spi()
# check_spi_plus_gpio()
