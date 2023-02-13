v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -90 250 -80 {
lab=#net1}
N 250 -90 300 -90 {
lab=#net1}
N 300 -70 300 -50 {
lab=xxx}
N 300 -50 430 -10 {
lab=xxx}
N 430 -10 430 10 {
lab=xxx}
N 250 10 300 10 {
lab=#net2}
N 300 10 300 20 {
lab=#net2}
N 430 -80 430 -50 {
lab=Q}
N 300 -10 300 -0 {
lab=Q}
N 300 -10 430 -50 {
lab=Q}
N 90 -60 90 0 {
lab=#net3}
N 90 -0 120 -0 {
lab=#net3}
N -10 -90 120 -90 {
lab=D}
N -10 -90 -10 -60 {
lab=D}
N 40 -70 120 -70 {
lab=CLK}
N 40 -70 40 20 {
lab=CLK}
N 40 20 120 20 {
lab=CLK}
N -10 20 40 20 {
lab=CLK}
N 430 -80 500 -80 {
lab=Q}
N 430 10 500 10 {
lab=xxx}
N -60 -60 -30 -60 {
lab=D}
N -30 -60 -10 -60 {
lab=D}
N -60 20 -10 20 {
lab=CLK}
N 500 -80 520 -80 {
lab=Q}
N 500 10 530 10 {
lab=xxx}
C {INV.sym} 50 -60 0 0 {name=x1}
C {nand.sym} 170 -80 0 0 {name=x2}
C {nand.sym} 170 10 0 0 {name=x3}
C {nand.sym} 350 -80 0 0 {name=x4}
C {nand.sym} 350 10 0 0 {name=x5}
C {ipin.sym} -60 -60 0 0 {name=p1 lab=D}
C {ipin.sym} -60 20 0 0 {name=p2 lab=CLK}
C {opin.sym} 520 -80 0 0 {name=p3 lab=Q}
C {opin.sym} 530 10 0 0 {name=p4 lab=Qb}
