import framebuffer as fb
from sh1122_ctrl import sh1122 as sh_ctrl

# Open VDD_GPIO
opened = 'n'
while opened != 'y':
    opened = input("Please set VDD_GPIO (Typ. 3.0V): enter y to continue.\n")

# Open VDD_LS
opened = 'n'
while opened != 'y':
    opened = input("Please set VDD_LS (Typ. 1.2V): enter y to continue.\n")

# Open VDD_IO
opened = 'n'
while opened != 'y':
    opened = input("Please set VDD_IO (Typ. 1.2V): enter y to continue.\n")

# Open VDD_CORE
opened = 'n'
while opened != 'y':
    opened = input("Please set VDD_CORE (Typ. 0.8V): enter y to continue.\n")

# Turn on opentitan_CLK_IN
opened = 'n'
while opened != 'y':
    opened = input("Please turn on opentitan clock (Typ. 50MHz): enter y to continue.\n")

# Start demo
opened = 'n'
while opened != 'y':
    opened = input("Do you want to have logo demo?: enter y to continue.\n")

print("Waiting for LCD to display logo...")
sh = sh_ctrl()
frame = fb.all_to_framebuffer(0)
sh.write_data(frame)