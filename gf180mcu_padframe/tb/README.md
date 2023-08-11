#  GF180 Padframe Cell Testbench Examples

## Note: 
Before starting xschem, make sure you have environment variables <code>PDK_ROOT</code> and <code>PDKPATH</code> defined. It's recommended to use <code>volare</code> to manage PDK releases.

## Description of the Testbenches:

* **digital_io_switching:** Transient simulation of four bidirectional digital IO cells switching between on and off, at <code>3V</code> supply. Four instances are created to highlight the unloaded drive strength differences. User can add their load model at nodes <code>PAD#n</code> to verify functionality.
* **digital_io_tristate:** Transient simulation of bidirectional digital IO cells switching between output mode and tristate + pull-up/down mode. 
* **analog_io_ac_pex:** Running AC Simulation on a extracted analog IO cell.

## Additional Files:
* **gf180mcu_fd_io__bi_t_extracted.spice**: A flattened netlist of the <code>gf180mcu_fd_io__bi_t</code> IO cell.
* **gf180mcu_fd_io__asig_5p0_extracted.spice**: A flattened netlist of the <code>gf180mcu_fd_io__asig_5p0</code> IO cell.
