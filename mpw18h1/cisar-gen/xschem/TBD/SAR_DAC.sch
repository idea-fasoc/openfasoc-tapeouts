v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 0 350 0 {
lab=Bi}
N 150 -20 190 -20 {
lab=avdd}
N 150 20 190 20 {
lab=agnd}
N 10 20 40 20 {
lab=CLK}
N 10 -90 10 20 {
lab=CLK}
N 10 -90 40 -90 {
lab=CLK}
N -30 0 40 0 {
lab=VOUT}
N 150 -90 200 -90 {
lab=#net1}
N 150 -110 190 -110 {
lab=avdd}
N 150 -70 190 -70 {
lab=agnd}
N 310 -110 350 -110 {
lab=avdd}
N 310 -70 350 -70 {
lab=agnd}
N 310 -90 330 -90 {
lab=#net2}
N 330 -90 330 -20 {
lab=#net2}
N 330 -20 350 -20 {
lab=#net2}
N 610 -20 650 -20 {
lab=avdd}
N 610 20 650 20 {
lab=agnd}
N 610 -0 640 0 {
lab=#net3}
N 480 0 500 -0 {
lab=#net4}
N 480 -60 480 -20 {
lab=avdd}
N 480 20 480 70 {
lab=agnd}
N 680 -60 680 -30 {
lab=Ctrl}
N 680 30 680 80 {
lab=REFN}
N 680 -0 700 -0 {
lab=REFN}
N 700 -0 700 60 {
lab=REFN}
N 680 60 700 60 {
lab=REFN}
N 680 -170 680 -120 {
lab=REFP}
N 680 -90 710 -90 {
lab=REFP}
N 710 -140 710 -90 {
lab=REFP}
N 680 -140 710 -140 {
lab=REFP}
N 640 -90 640 -0 {
lab=#net3}
N -20 -20 40 -20 {
lab=avdd}
C {DFF_withreset.sym} 90 0 0 0 {name=x1}
C {nand.sym} 410 0 0 0 {name=x2}
C {INV.sym} 100 -90 0 0 {name=x3}
C {INV.sym} 260 -90 0 0 {name=x4}
C {pfet_03v3.sym} 660 -90 0 0 {name=M1
L=0.28u
W=3.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {nfet_03v3.sym} 660 0 0 0 {name=M2
L=0.28u
W=1.2u
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
C {lab_pin.sym} 170 -20 0 0 {name=p1 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 170 20 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {lab_pin.sym} 210 0 0 0 {name=p3 sig_type=std_logic lab=Bi}
C {lab_pin.sym} 20 20 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 20 0 0 0 {name=p5 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 180 -110 0 0 {name=p6 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 180 -70 0 0 {name=p7 sig_type=std_logic lab=agnd}
C {lab_pin.sym} 330 -110 0 0 {name=p8 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 320 -70 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {INV.sym} 560 0 0 0 {name=x5}
C {lab_pin.sym} 630 -20 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 620 20 0 0 {name=p11 sig_type=std_logic lab=agnd}
C {lab_pin.sym} 480 -50 0 0 {name=p12 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 480 50 0 0 {name=p13 sig_type=std_logic lab=agnd}
C {lab_pin.sym} 680 -40 0 0 {name=p14 sig_type=std_logic lab=Ctrl}
C {lab_pin.sym} 680 -150 0 0 {name=p15 sig_type=std_logic lab=REFP}
C {lab_pin.sym} 680 50 0 0 {name=p16 sig_type=std_logic lab=REFN}
C {lab_pin.sym} 30 -20 0 0 {name=p17 sig_type=std_logic lab=avdd}
C {iopin.sym} -270 -30 0 0 {name=p18 lab=agnd}
C {opin.sym} -120 -30 0 0 {name=p19 lab=Ctrl}
C {ipin.sym} -140 -60 0 0 {name=p20 lab=CLK}
C {ipin.sym} -140 -30 0 0 {name=p21 lab=REFP}
C {opin.sym} -120 -60 0 0 {name=p22 lab=Bi}
C {iopin.sym} -270 -60 0 0 {name=p23 lab=avdd}
C {ipin.sym} -140 0 0 0 {name=p24 lab=REFN}
C {ipin.sym} -140 -90 0 0 {name=p25 lab=VOUT}
