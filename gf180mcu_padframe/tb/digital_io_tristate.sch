v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -490 150 -470 {
lab=GND}
N 150 -610 150 -550 {
lab=DVDD}
N 210 -490 210 -470 {
lab=GND}
N 210 -610 210 -550 {
lab=VDD}
N 150 -470 210 -470 {
lab=GND}
N 270 -490 270 -470 {
lab=GND}
N 270 -610 270 -550 {
lab=DVSS}
N 330 -490 330 -470 {
lab=GND}
N 330 -610 330 -550 {
lab=VSS}
N 270 -470 330 -470 {
lab=GND}
N 210 -470 270 -470 {
lab=GND}
N 510 -490 510 -470 {
lab=GND}
N 510 -610 510 -550 {
lab=IE}
N 480 -420 480 -360 {
lab=OE}
N 570 -490 570 -470 {
lab=GND}
N 510 -470 570 -470 {
lab=GND}
N 570 -610 570 -550 {
lab=SL}
N 630 -490 630 -470 {
lab=GND}
N 570 -470 630 -470 {
lab=GND}
N 630 -610 630 -550 {
lab=CS}
N 330 -470 510 -470 {
lab=GND}
N 480 -300 480 -280 {
lab=GND}
C {devices/code_shown.sym} 1050 -630 0 0 {name=s1
only_toplevel=false
value="
.tran 100p 4000n
.save all
.control
run
display
plot OE PAD0 Y0
plot OE PAD1 Y1
.endc
"}
C {devices/code_shown.sym} 1050 -800 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"}
C {devices/code_shown.sym} 70 -770 0 0 {name=DUT only_toplevel=true
format="tcleval( @value )"
value="
.include "../gf180mcu_fd_io.spice"
XDUT0 VDD CS DVDD DVSS IE OE PAD0 VDD VSS VSS VSS SL VDD VSS Y0 gf180mcu_fd_io__bi_t
XDUT1 VSS CS DVDD DVSS IE OE PAD1 VSS VSS VSS VDD SL VDD VSS Y1 gf180mcu_fd_io__bi_t
"}
C {devices/vsource.sym} 150 -520 0 0 {name=V1 value=3}
C {devices/gnd.sym} 150 -470 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 150 -590 0 0 {name=p1 sig_type=std_logic lab=DVDD}
C {devices/vsource.sym} 210 -520 0 0 {name=V2 value=3}
C {devices/lab_wire.sym} 210 -590 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 270 -520 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} 270 -590 0 0 {name=p3 sig_type=std_logic lab=DVSS}
C {devices/vsource.sym} 330 -520 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 330 -590 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 480 -330 0 0 {name=V5 value="PULSE(0 3 1000n 100p 100p 1000n 2000n)"}
C {devices/vsource.sym} 510 -520 0 0 {name=V7 value=3}
C {devices/lab_wire.sym} 510 -590 0 0 {name=p7 sig_type=std_logic lab=IE}
C {devices/lab_wire.sym} 480 -400 0 0 {name=p8 sig_type=std_logic lab=OE}
C {devices/vsource.sym} 570 -520 0 0 {name=V11 value=0}
C {devices/lab_wire.sym} 570 -590 0 0 {name=p11 sig_type=std_logic lab=SL}
C {devices/vsource.sym} 630 -520 0 0 {name=V13 value=3}
C {devices/lab_wire.sym} 630 -590 0 0 {name=p13 sig_type=std_logic lab=CS}
C {devices/gnd.sym} 480 -280 0 0 {name=l3 lab=GND}
