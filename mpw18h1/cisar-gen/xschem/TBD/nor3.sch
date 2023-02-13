v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -40 120 30 {
lab=OUT}
N 230 -10 230 30 {
lab=OUT}
N 120 -10 230 -10 {
lab=OUT}
N 120 90 230 90 {
lab=agnd}
N 120 60 160 60 {
lab=agnd}
N 160 60 160 90 {
lab=agnd}
N 230 90 280 90 {
lab=agnd}
N 230 60 280 60 {
lab=agnd}
N 280 60 280 90 {
lab=agnd}
N 180 90 180 110 {
lab=agnd}
N 80 -70 80 60 {
lab=IN2}
N 30 -260 80 -260 {
lab=IN1}
N 30 -180 30 20 {
lab=IN1}
N 190 20 190 60 {
lab=IN1}
N 30 20 190 20 {
lab=IN1}
N 120 -70 190 -70 {
lab=avdd}
N 120 -290 190 -290 {
lab=avdd}
N 190 -210 190 -70 {
lab=avdd}
N 120 -260 190 -260 {
lab=avdd}
N -10 -30 30 -30 {
lab=IN1}
N 120 -30 260 -30 {
lab=OUT}
N -10 40 60 40 {
lab=IN2}
N 60 -20 60 40 {
lab=IN2}
N 60 -20 80 -20 {
lab=IN2}
N 150 -320 150 -290 {
lab=avdd}
N 180 110 180 130 {
lab=agnd}
N 120 -170 190 -170 {
lab=avdd}
N 190 -260 190 -210 {
lab=avdd}
N 190 -290 190 -260 {
lab=avdd}
N 120 -230 120 -200 {
lab=#net1}
N 120 -140 120 -100 {
lab=#net2}
N 30 -260 30 -180 {
lab=IN1}
N 280 90 350 90 {
lab=agnd}
N 350 60 390 60 {
lab=agnd}
N 390 60 390 90 {
lab=agnd}
N 350 90 390 90 {
lab=agnd}
N 350 -0 350 30 {
lab=OUT}
N 230 0 350 0 {
lab=OUT}
N -20 -170 80 -170 {
lab=IN3}
N 310 -120 310 60 {}
N 0 -170 -0 -120 {}
N 0 -120 310 -120 {}
C {pfet_03v3.sym} 100 -70 0 0 {name=M2
L=0.28u
W=0.88u
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
C {pfet_03v3.sym} 100 -260 0 0 {name=M5
L=0.28u
W=0.88u
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
C {nfet_03v3.sym} 210 60 0 0 {name=M1
L=0.28u
W=0.22u
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
C {nfet_03v3.sym} 100 60 0 0 {name=M3
L=0.28u
W=0.22u
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
C {opin.sym} 260 -30 0 0 {name=p2 lab=OUT
}
C {ipin.sym} -10 -30 0 0 {name=p3 lab=IN1
}
C {ipin.sym} -10 40 0 0 {name=p4 lab=IN2}
C {iopin.sym} 150 -320 0 0 {name=p1 lab=avdd
}
C {iopin.sym} 180 130 0 0 {name=p5 lab=agnd}
C {pfet_03v3.sym} 100 -170 0 0 {name=M4
L=0.28u
W=0.88u
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
C {nfet_03v3.sym} 330 60 0 0 {name=M6
L=0.28u
W=0.22u
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
C {ipin.sym} -20 -170 0 0 {name=p6 lab=IN3
}
