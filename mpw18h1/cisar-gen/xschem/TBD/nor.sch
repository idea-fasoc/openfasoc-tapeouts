v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1380 -480 1380 -410 {
lab=OUT}
N 1380 -590 1380 -540 {
lab=#net1}
N 1490 -450 1490 -410 {
lab=OUT}
N 1380 -450 1490 -450 {
lab=OUT}
N 1380 -350 1490 -350 {
lab=agnd}
N 1380 -380 1420 -380 {
lab=agnd}
N 1420 -380 1420 -350 {
lab=agnd}
N 1490 -350 1540 -350 {
lab=agnd}
N 1490 -380 1540 -380 {
lab=agnd}
N 1540 -380 1540 -350 {
lab=agnd}
N 1440 -350 1440 -330 {
lab=agnd}
N 1340 -510 1340 -380 {
lab=IN2}
N 1290 -620 1340 -620 {
lab=IN1}
N 1290 -620 1290 -420 {
lab=IN1}
N 1450 -420 1450 -380 {
lab=IN1}
N 1290 -420 1450 -420 {
lab=IN1}
N 1380 -510 1450 -510 {
lab=avdd}
N 1380 -650 1450 -650 {
lab=avdd}
N 1450 -650 1450 -510 {
lab=avdd}
N 1380 -620 1450 -620 {
lab=avdd}
N 1250 -470 1290 -470 {
lab=IN1}
N 1380 -470 1520 -470 {
lab=OUT}
N 1250 -400 1320 -400 {
lab=IN2}
N 1320 -460 1320 -400 {
lab=IN2}
N 1320 -460 1340 -460 {
lab=IN2}
N 1410 -680 1410 -650 {
lab=avdd}
N 1440 -330 1440 -310 {
lab=agnd}
C {pfet_03v3.sym} 1360 -510 0 0 {name=M2
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
C {pfet_03v3.sym} 1360 -620 0 0 {name=M5
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
C {nfet_03v3.sym} 1470 -380 0 0 {name=M1
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
C {nfet_03v3.sym} 1360 -380 0 0 {name=M3
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
C {opin.sym} 1520 -470 0 0 {name=p2 lab=OUT
}
C {ipin.sym} 1250 -470 0 0 {name=p3 lab=IN1
}
C {ipin.sym} 1250 -400 0 0 {name=p4 lab=IN2}
C {iopin.sym} 1410 -680 0 0 {name=p1 lab=avdd
}
C {iopin.sym} 1440 -310 0 0 {name=p5 lab=agnd}
