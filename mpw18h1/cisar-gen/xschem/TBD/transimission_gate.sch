v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -330 320 -330 {
lab=OUT}
N 320 -330 320 -270 {
lab=OUT}
N 320 -270 390 -270 {
lab=OUT}
N 390 -350 390 -330 {
lab=IN}
N 280 -350 390 -350 {
lab=IN}
N 280 -350 280 -270 {
lab=IN}
N 250 -270 280 -270 {
lab=IN}
N 180 -300 210 -300 {
lab=CLK}
N 250 -300 300 -300 {
lab=agnd}
N 300 -300 300 -230 {
lab=agnd}
N 360 -240 400 -240 {
lab=OUT}
N 300 -230 300 -220 {
lab=agnd}
N 410 -420 420 -420 {
lab=avdd}
N 410 -420 410 -390 {
lab=avdd}
N 390 -300 410 -300 {
lab=avdd}
N 410 -390 410 -300 {
lab=avdd}
N 360 -270 360 -240 {
lab=OUT}
N 340 -370 340 -350 {
lab=IN}
N 350 -340 350 -300 {
lab=CLK_b}
N 180 -340 350 -340 {
lab=CLK_b}
N 150 -340 180 -340 {
lab=CLK_b}
N 150 -300 180 -300 {
lab=CLK}
C {nfet_03v3.sym} 230 -300 0 0 {name=M1
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
C {pfet_03v3.sym} 370 -300 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 340 -370 0 0 {name=p1 lab=IN}
C {opin.sym} 400 -240 0 0 {name=p2 lab=OUT
}
C {iopin.sym} 420 -420 0 0 {name=p3 lab=avdd
}
C {iopin.sym} 300 -220 0 0 {name=p4 lab=agnd
}
C {ipin.sym} 150 -340 0 0 {name=p5 lab=CLK_b

}
C {ipin.sym} 150 -300 0 0 {name=p6 lab=CLK}
