v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 550 -230 670 -230 {
lab=#net1}
N 550 -170 550 -120 {
lab=VaN}
N 670 -170 670 -120 {
lab=xxx}
N 550 -60 670 -60 {
lab=agnd}
N 610 -250 610 -230 {
lab=#net1}
N 550 -90 570 -90 {
lab=agnd}
N 570 -90 570 -60 {
lab=agnd}
N 640 -90 670 -90 {
lab=agnd}
N 640 -90 640 -60 {
lab=agnd}
N 550 -200 670 -200 {
lab=avdd}
N 610 -280 640 -280 {
lab=avdd}
N 640 -280 640 -200 {
lab=avdd}
N 480 -90 510 -90 {
lab=CLKc}
N 710 -200 740 -200 {
lab=VINN}
N 710 -90 740 -90 {
lab=CLKc}
N 830 -290 830 -120 {
lab=VOUTN}
N 670 -60 830 -60 {
lab=agnd}
N 800 -90 830 -90 {
lab=agnd}
N 800 -90 800 -60 {
lab=agnd}
N 610 -350 610 -310 {
lab=avdd}
N 610 -350 830 -350 {
lab=avdd}
N 800 -320 830 -320 {
lab=avdd}
N 800 -350 800 -320 {
lab=avdd}
N 870 -320 890 -320 {
lab=#net2}
N 890 -320 890 -90 {
lab=#net2}
N 870 -90 890 -90 {
lab=#net2}
N 830 -350 960 -350 {
lab=avdd}
N 960 -350 1080 -350 {
lab=avdd}
N 1080 -350 1280 -350 {
lab=avdd}
N 1280 -350 1370 -350 {
lab=avdd}
N 1370 -350 1570 -350 {
lab=avdd}
N 830 -60 1080 -60 {
lab=agnd}
N 1080 -60 1280 -60 {
lab=agnd}
N 1280 -60 1570 -60 {
lab=agnd}
N 1570 -70 1570 -60 {
lab=agnd}
N 1570 -290 1570 -130 {
lab=VOUTP}
N 1530 -320 1530 -100 {
lab=#net3}
N 1280 -290 1370 -290 {
lab=#net3}
N 1370 -290 1530 -290 {
lab=#net3}
N 1320 -190 1410 -190 {
lab=VaP}
N 1410 -320 1410 -190 {
lab=VaP}
N 1280 -160 1280 -120 {
lab=#net4}
N 1280 -290 1280 -220 {
lab=#net3}
N 1080 -160 1080 -120 {
lab=#net5}
N 1080 -290 1080 -220 {
lab=#net2}
N 960 -290 1080 -290 {
lab=#net2}
N 890 -290 960 -290 {
lab=#net2}
N 920 -320 920 -250 {
lab=VaN}
N 640 -350 640 -280 {
lab=avdd}
N 960 -320 990 -320 {
lab=avdd}
N 990 -350 990 -320 {
lab=avdd}
N 1050 -320 1090 -320 {
lab=avdd}
N 1050 -350 1050 -320 {
lab=avdd}
N 1050 -90 1080 -90 {
lab=agnd}
N 1050 -90 1050 -60 {
lab=agnd}
N 1080 -190 1100 -190 {
lab=agnd}
N 1100 -190 1100 -150 {
lab=agnd}
N 1050 -150 1100 -150 {
lab=agnd}
N 1050 -150 1050 -90 {
lab=agnd}
N 1280 -90 1310 -90 {
lab=agnd}
N 1310 -90 1310 -60 {
lab=agnd}
N 1230 -190 1280 -190 {
lab=agnd}
N 1230 -190 1230 -140 {
lab=agnd}
N 1230 -140 1310 -140 {
lab=agnd}
N 1310 -140 1310 -90 {
lab=agnd}
N 1570 -100 1600 -100 {
lab=agnd}
N 1600 -100 1600 -60 {
lab=agnd}
N 1570 -60 1600 -60 {
lab=agnd}
N 1570 -320 1600 -320 {
lab=avdd}
N 1600 -350 1600 -320 {
lab=avdd}
N 1570 -350 1600 -350 {
lab=avdd}
N 1120 -320 1170 -320 {
lab=#net3}
N 1170 -320 1170 -90 {
lab=#net3}
N 1120 -90 1170 -90 {
lab=#net3}
N 1200 -320 1240 -320 {
lab=#net2}
N 1200 -320 1200 -90 {
lab=#net2}
N 1200 -90 1240 -90 {
lab=#net2}
N 1080 -270 1200 -270 {
lab=#net2}
N 1170 -230 1280 -230 {
lab=#net3}
N 1280 -320 1370 -320 {
lab=avdd}
N 1330 -350 1330 -320 {
lab=avdd}
N 530 -280 570 -280 {
lab=CLKc}
N 470 -200 510 -200 {
lab=VINP}
N 920 -190 1040 -190 {
lab=VaN}
N 920 -250 920 -190 {
lab=VaN}
C {pfet_03v3.sym} 530 -200 0 0 {name=M1
L=0.18u
W=0.98u
nf=4
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
C {nfet_03v3.sym} 530 -90 0 0 {name=M2
L=0.18u
W=2.4u
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
C {pfet_03v3.sym} 690 -200 2 0 {name=M3
L=0.18u
W=9.8u
nf=4
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
C {nfet_03v3.sym} 690 -90 2 0 {name=M4
L=0.18u
W=2.4u
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
C {pfet_03v3.sym} 590 -280 0 0 {name=M5
L=0.18u
W=4.5u
nf=2
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
C {pfet_03v3.sym} 850 -320 2 0 {name=M6
L=0.18u
W=2.4u
nf=2
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
C {nfet_03v3.sym} 850 -90 2 0 {name=M7
L=0.18u
W=2.4u
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
C {pfet_03v3.sym} 940 -320 0 0 {name=M8
L=0.18u
W=4.8u
nf=2
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
C {pfet_03v3.sym} 1100 -320 2 0 {name=M9
L=0.18u
W=4.8u
nf=2
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
C {nfet_03v3.sym} 1100 -90 2 0 {name=M10
L=0.18u
W=4.8u
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
C {nfet_03v3.sym} 1060 -190 0 0 {name=M11
L=0.18u
W=4.8u
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
C {pfet_03v3.sym} 1260 -320 0 0 {name=M12
L=0.18u
W=4.8u
nf=2
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
C {nfet_03v3.sym} 1260 -90 0 0 {name=M13
L=0.18u
W=4.8u
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
C {nfet_03v3.sym} 1300 -190 2 0 {name=M14
L=0.18u
W=4.8u
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
C {pfet_03v3.sym} 1390 -320 2 0 {name=M15
L=0.18u
W=4.8u
nf=2
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
C {pfet_03v3.sym} 1550 -320 0 0 {name=M16
L=0.18u
W=2.4u
nf=2
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
C {nfet_03v3.sym} 1550 -100 0 0 {name=M17
L=0.18u
W=1.2u
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
C {lab_pin.sym} 550 -280 0 0 {name=p1 sig_type=std_logic lab=CLKc}
C {lab_pin.sym} 490 -200 0 0 {name=p2 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 730 -200 0 0 {name=p3 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 500 -90 0 0 {name=p4 sig_type=std_logic lab=CLKc}
C {lab_pin.sym} 720 -90 0 0 {name=p5 sig_type=std_logic lab=CLKc}
C {lab_pin.sym} 830 -190 0 0 {name=p6 sig_type=std_logic lab=VOUTN}
C {lab_pin.sym} 970 -190 0 0 {name=p7 sig_type=std_logic lab=VaN}
C {lab_pin.sym} 1380 -190 0 0 {name=p8 sig_type=std_logic lab=VaP}
C {lab_pin.sym} 1570 -190 0 0 {name=p9 sig_type=std_logic lab=VOUTP}
C {lab_pin.sym} 730 -350 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 750 -60 0 0 {name=p11 sig_type=std_logic lab=agnd}
C {iopin.sym} 20 -250 0 0 {name=p12 lab=VDD}
C {ipin.sym} 150 -220 0 0 {name=p13 lab=VINP}
C {opin.sym} 180 -250 0 0 {name=p14 lab=VOUTP}
C {iopin.sym} 20 -210 0 0 {name=p15 lab=GND}
C {opin.sym} 180 -220 0 0 {name=p16 lab=VOUTN}
C {ipin.sym} 150 -250 0 0 {name=p17 lab=VINN}
C {ipin.sym} 150 -190 0 0 {name=p18 lab=CLKc}
C {lab_pin.sym} 550 -140 0 0 {name=p19 sig_type=std_logic lab=VaN}
C {lab_pin.sym} 670 -140 0 0 {name=p20 sig_type=std_logic lab=VaP
}
