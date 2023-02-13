v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -20 140 90 {
lab=VGate}
N 80 -20 140 -20 {
lab=VGate}
N 80 -0 100 0 {
lab=Vin}
N 100 0 100 130 {
lab=Vin}
N 100 130 110 130 {
lab=Vin}
N 140 130 140 240 {
lab=GND}
N 0 70 0 240 {
lab=GND}
N 0 240 140 240 {
lab=GND}
N 140 240 140 270 {
lab=GND}
N 170 130 230 130 {
lab=Vout}
N 230 130 230 150 {
lab=Vout}
N 230 210 230 240 {
lab=GND}
N 140 240 230 240 {
lab=GND}
N -250 130 100 130 {
lab=Vin}
N -250 130 -250 150 {
lab=Vin}
N -250 210 -250 240 {
lab=GND}
N -120 240 0 240 {
lab=GND}
N -120 90 -120 240 {
lab=GND}
N -190 240 -120 240 {
lab=GND}
N -120 -40 -120 30 {
lab=CLK}
N -120 -40 -70 -40 {
lab=CLK}
N -190 90 -190 240 {
lab=GND}
N -250 240 -190 240 {
lab=GND}
N -190 -100 -190 30 {
lab=VDD}
N -190 -100 -0 -100 {
lab=VDD}
N -0 -100 0 -70 {
lab=VDD}
N 80 -40 210 -40 {
lab=CLKn}
C {SAR_modified/Bootstrapper.sym} 0 0 0 0 {name=x1}
C {gf180mcu_fd_pr/nfet_03v3.sym} 140 110 3 1 {name=M1
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/gnd.sym} 140 270 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 230 180 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -120 60 0 0 {name=V1 value="PULSE(0 3 0 10p 10p 5n 10n)"}
C {devices/vsource.sym} -190 60 0 0 {name=V2 value=3}
C {devices/vsource.sym} -250 180 0 0 {name=V3 value="SIN(0.75 0.75 \{f\})"}
C {devices/lab_wire.sym} -130 -100 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -80 -40 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 140 -40 0 0 {name=p3 sig_type=std_logic lab=CLKn}
C {devices/lab_wire.sym} 140 -20 0 0 {name=p4 sig_type=std_logic lab=VGate}
C {devices/lab_wire.sym} 80 130 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 230 130 0 0 {name=p6 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} -210 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 340 -50 0 0 {name=NGSPICE only_toplevel=true
value="
.param f=10e6
.tran 0.01n \{1.5/f\}
.control
save all
run
display
plot vin vout
plot vout vgate
plot clk clkn
.endc
"}
