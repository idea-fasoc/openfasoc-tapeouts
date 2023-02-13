v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1350 -390 1350 -340 {
lab=avdd}
N 1350 -280 1350 -240 {
lab=OUT}
N 1350 -180 1350 -150 {
lab=xxx}
N 1310 -310 1310 -210 {
lab=IN}
N 1350 -260 1470 -260 {
lab=OUT}
N 1270 -260 1310 -260 {
lab=IN}
N 1350 -150 1350 -120 {
lab=xxx}
N 1350 -420 1350 -390 {
lab=avdd}
C {pfet_03v3.sym} 1330 -310 0 0 {name=M1
L=0.28u
W=0.44u
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
C {nfet_03v3.sym} 1330 -210 0 0 {name=M2
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
C {opin.sym} 1470 -260 0 0 {name=p1 lab=OUT
}
C {ipin.sym} 1270 -260 0 0 {name=p2 lab=IN
}
C {iopin.sym} 1350 -420 0 0 {name=p3 lab=avdd
}
C {iopin.sym} 1350 -120 0 0 {name=p4 lab=agnd}
