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
N 390 -300 390 -280 {
lab=GND}
N 390 -420 390 -360 {
lab=A}
N 510 -490 510 -470 {
lab=GND}
N 510 -610 510 -550 {
lab=IE}
N 570 -490 570 -470 {
lab=GND}
N 510 -470 570 -470 {
lab=GND}
N 570 -610 570 -550 {
lab=OE}
N 630 -490 630 -470 {
lab=GND}
N 570 -470 630 -470 {
lab=GND}
N 630 -610 630 -550 {
lab=PU}
N 690 -490 690 -470 {
lab=GND}
N 630 -470 690 -470 {
lab=GND}
N 690 -610 690 -550 {
lab=PD}
N 750 -490 750 -470 {
lab=GND}
N 690 -470 750 -470 {
lab=GND}
N 750 -610 750 -550 {
lab=SL}
N 810 -490 810 -470 {
lab=GND}
N 750 -470 810 -470 {
lab=GND}
N 810 -610 810 -550 {
lab=CS}
N 330 -470 510 -470 {
lab=GND}
C {devices/code_shown.sym} 1050 -630 0 0 {name=s1
only_toplevel=false
value="
.tran 100p 100n
.save all
.control
run
display
plot A PAD0 Y0
plot PAD0 PAD1 PAD2 PAD3
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
XDUT0 A CS DVDD DVSS IE OE PAD0 PD VSS VSS PU SL VDD VSS Y0 gf180mcu_fd_io__bi_t
XDUT1 A CS DVDD DVSS IE OE PAD1 PD VDD VSS PU SL VDD VSS Y1 gf180mcu_fd_io__bi_t
XDUT2 A CS DVDD DVSS IE OE PAD2 PD VSS VDD PU SL VDD VSS Y2 gf180mcu_fd_io__bi_t
XDUT3 A CS DVDD DVSS IE OE PAD3 PD VDD VDD PU SL VDD VSS Y3 gf180mcu_fd_io__bi_t
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
C {devices/vsource.sym} 390 -330 0 0 {name=V5 value="PULSE(0 3 10n 100p 100p 10n 20n)"}
C {devices/lab_wire.sym} 390 -400 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/vsource.sym} 510 -520 0 0 {name=V7 value=3}
C {devices/lab_wire.sym} 510 -590 0 0 {name=p7 sig_type=std_logic lab=IE}
C {devices/vsource.sym} 570 -520 0 0 {name=V8 value=3}
C {devices/lab_wire.sym} 570 -590 0 0 {name=p8 sig_type=std_logic lab=OE}
C {devices/vsource.sym} 630 -520 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 630 -590 0 0 {name=p9 sig_type=std_logic lab=PU}
C {devices/vsource.sym} 690 -520 0 0 {name=V10 value=0}
C {devices/lab_wire.sym} 690 -590 0 0 {name=p10 sig_type=std_logic lab=PD}
C {devices/vsource.sym} 750 -520 0 0 {name=V11 value=0}
C {devices/lab_wire.sym} 750 -590 0 0 {name=p11 sig_type=std_logic lab=SL}
C {devices/gnd.sym} 390 -280 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 810 -520 0 0 {name=V13 value=3.3}
C {devices/lab_wire.sym} 810 -590 0 0 {name=p13 sig_type=std_logic lab=CS}
