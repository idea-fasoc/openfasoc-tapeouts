# User config
set ::env(DESIGN_NAME) pulpino_top

# Relative floorplan
# set ::env(FP_CORE_UTIL) 25
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 2800 3420"
set ::env(CORE_AREA) "10 10 2790 3410"

set ::env(PL_TARGET_DENSITY) 0.2
# set ::env(CELL_PAD) 0

# Auto macro place
# set ::env(PL_MACRO_CHANNEL) {20 20}
# set ::env(PL_MACRO_HALO) {10 10}
set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro_placement.cfg
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set ::env(BASE_SDC_FILE) $::env(DESIGN_DIR)/base.sdc

set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]
# set ::env(SYNTH_USE_PG_PINS_DEFINES) "USE_POWER_PINS"

# PDN Pitch
set ::env(FP_PDN_VPITCH) 180
set ::env(FP_PDN_HPITCH) $::env(FP_PDN_VPITCH)

# PDN Offset
set ::env(FP_PDN_VOFFSET) 5
set ::env(FP_PDN_HOFFSET) $::env(FP_PDN_VOFFSET)

## Internal Macros
### Macro PDN Connections
set ::env(FP_PDN_MACRO_HOOKS) "\
    .* vccd1 vssd1"

set ::env(CLOCK_PERIOD) "25"
set ::env(CLOCK_PORT) "clk"

# set ::env(DIODE_INSERTION_STRATEGY) 0
# set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0 
# set ::env(GLB_RT_OVERFLOW_ITERS) 100
# set ::env(GLB_RT_ADJUSTMENT) 0

# Change if needed
set ::env(CACHED_NETLIST) "$::env(DESIGN_DIR)/src/$::env(DESIGN_NAME).v"
# set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/src/$::env(DESIGN_NAME).v"
# set ::env(VERILOG_FILES_BLACKBOX) "$::env(DESIGN_DIR)/src/sky130_sram_2kbyte_1rw_32x512_8.v"

set ::env(EXTRA_LIBS) [glob $::env(DESIGN_DIR)/macros/lib/*.lib]
set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/macros/lef/*.lef]
set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/macros/gds/*.gds]

set ::env(ROUTING_CORES) 60
# set ::env(ECO_ENABLE) 1
# set ::env(ECO_ITER) 0

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
