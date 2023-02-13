v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1250 -540 1290 -540 {
lab=IN1}
N 1250 -420 1290 -420 {
lab=IN2}
N 1380 -350 1440 -350 {
lab=agnd}
N 1440 -350 1440 -330 {
lab=agnd}
N 1380 -450 1380 -410 {
lab=#net1}
N 1380 -590 1380 -510 {
lab=OUT}
N 1480 -590 1480 -560 {
lab=OUT}
N 1380 -560 1480 -560 {
lab=OUT}
N 1380 -650 1480 -650 {
lab=xxx}
N 1340 -620 1340 -480 {
lab=IN1}
N 1440 -620 1440 -430 {
lab=IN2}
N 1340 -430 1440 -430 {
lab=IN2}
N 1340 -430 1340 -380 {
lab=IN2}
N 1290 -420 1340 -420 {
lab=IN2}
N 1290 -540 1340 -540 {
lab=IN1}
N 1380 -530 1490 -530 {
lab=OUT}
N 1490 -530 1490 -470 {
lab=OUT}
N 1490 -470 1520 -470 {
lab=OUT}
N 1440 -700 1440 -650 {
lab=xxx}
N 1440 -330 1440 -290 {
lab=agnd}
C {pfet_03v3.sym} 1460 -620 0 0 {name=M2
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
C {pfet_03v3.sym} 1360 -620 0 0 {name=M5
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
C {nfet_03v3.sym} 1360 -480 0 0 {name=M1
L=0.28u
W=0.44
u
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
W=0.44u
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
C {ipin.sym} 1250 -540 0 0 {name=p1 lab=IN1
}
C {opin.sym} 1520 -470 0 0 {name=p2 lab=OUT
}
C {ipin.sym} 1250 -420 0 0 {name=p3 lab=IN2
}
C {iopin.sym} 1440 -700 0 0 {name=p4 lab=avdd}
C {iopin.sym} 1440 -290 0 0 {name=p5 lab=agnd
}
