v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1690 -740 1770 -740 {
lab=#net1}
N 1690 -970 1770 -970 {
lab=#net2}
N 1770 -840 1770 -800 {
lab=VCM}
N 1620 -840 1620 -800 {
lab=VIP}
N 1810 -770 1850 -770 {
lab=CLK}
N 1540 -770 1580 -770 {
lab=vgateP}
N 1810 -940 1860 -940 {
lab=CLK}
N 1540 -940 1580 -940 {
lab=vgateN}
N 1620 -910 1620 -880 {
lab=VIN}
N 1690 -740 1690 -710 {
lab=#net1}
N 1690 -1010 1690 -970 {
lab=#net2}
N 1740 -770 1770 -770 {
lab=agnd}
N 1620 -770 1650 -770 {
lab=agnd}
N 1730 -940 1770 -940 {
lab=agnd}
N 1620 -940 1660 -940 {
lab=agnd}
N 1770 -910 1770 -880 {
lab=VCM}
N 1690 -1070 1770 -1070 {
lab=VCM_1}
N 1690 -650 1770 -650 {
lab=VCM_2}
N 1620 -740 1690 -740 {
lab=#net1}
N 1620 -970 1690 -970 {
lab=#net2}
C {gf180mcu_fd_pr/nfet_03v3.sym} 1790 -940 2 0 {name=M17
L=0.18u
W=0.9u
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
C {gf180mcu_fd_pr/nfet_03v3.sym} 1600 -940 0 0 {name=M18
L=0.18u
W=0.9u
nf=2
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
C {devices/lab_pin.sym} 1830 -770 0 0 {name=p255 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1830 -940 0 0 {name=p256 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1560 -940 0 0 {name=p315 sig_type=std_logic lab=vgateN}
C {devices/lab_pin.sym} 1560 -770 0 0 {name=p316 sig_type=std_logic lab=vgateP}
C {devices/lab_pin.sym} 1740 -940 0 0 {name=p317 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 1750 -770 0 0 {name=p318 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 1640 -940 0 0 {name=p319 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 1640 -770 0 0 {name=p320 sig_type=std_logic lab=agnd}
C {gf180mcu_fd_pr/nfet_03v3.sym} 1790 -770 2 0 {name=M19
L=0.18u
W=0.9u
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
C {gf180mcu_fd_pr/nfet_03v3.sym} 1600 -770 0 0 {name=M20
L=0.18u
W=0.9u
nf=2
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
C {devices/lab_pin.sym} 1770 -830 0 0 {name=p273 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 1770 -890 0 0 {name=p274 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 1620 -890 0 0 {name=p275 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 1620 -820 0 0 {name=p276 sig_type=std_logic lab=VIP}
C {devices/iopin.sym} 1210 -930 0 0 {name=p3 lab=VCM}
C {devices/ipin.sym} 1360 -930 0 0 {name=p4 lab=vgateN}
C {devices/iopin.sym} 1770 -1070 0 0 {name=p5 lab=VCM_1}
C {devices/ipin.sym} 1360 -870 0 0 {name=p6 lab=vgateP}
C {devices/iopin.sym} 1770 -650 0 0 {name=p7 lab=VCM_2}
C {devices/iopin.sym} 1210 -860 0 0 {name=p8 lab=agnd}
C {devices/ipin.sym} 1350 -830 0 0 {name=p9 lab=VIN}
C {devices/ipin.sym} 1350 -770 0 0 {name=p10 lab=VIP}
C {devices/iopin.sym} 1210 -820 0 0 {name=p11 lab=CLK}
C {gf180mcu_fd_pr/cap_mim_2p0fF.sym} 1690 -1040 0 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_2p0fF
spiceprefix=X
m=1}
C {gf180mcu_fd_pr/cap_mim_2p0fF.sym} 1690 -680 0 0 {name=C2
W=1e-6
L=1e-6
model=cap_mim_2p0fF
spiceprefix=X
m=1}
