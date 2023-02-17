**Information about LDO's tapedout in MPW-2**


| LDO           | PT_UNIT_CELL  | PT_UNIT_CELL_W | Aux Cell  | Number of Switches | Number of Capacitor |
| :------------ |   :---:       | :--------:     | :-------: | :-----------------:| :------------------:|
| `ldo1`        | No            | Yes            | Yes       | 159                | 5                   |
| `ldo2`        | No            | Yes            | Yes       | 159                | 10                  |
| `ldo3`        | No            | Yes            | Yes       | 250                | 10                  |
| `ldo4`        | No            | Yes            | No        | 250                | 10                  |
| `ldo5`        | No            | Yes            | No        | 159                | 10                  |
| `ldo6`        | Yes           | No             | Yes       | 159                | 5                   |
| `ldo7`        | Yes           | No             | Yes       | 159                | 10                  |
| `ldo8`        | Yes           | No             | Yes       | 250                | 10                  |
| `ldo9`        | Yes           | No             | No        | 250                | 10                  |
| `ldo10`       | Yes           | No             | No        | 159                | 10                  |


PT_UNIT_CELL

Devices Syntax:
X0 Drain Gate Source Body sky130_fd_pr__pfet_g5v0d10v5
X1 Drain Gate Source Body sky130_fd_pr__nfet_g5v0d10v5

Devices:
X0 VREG CTRL vpwr vpb sky130_fd_pr__pfet_g5v0d10v5 W = 0.75u , L = 0.5u (Switch)
X1 vgnd VREG vgnd vnb sky130_fd_pr__nfet_g5v0d10v5 W = 0.75u , L = 0.5u (MOS Cap)


PT_UNIT_CELL_W

Device Syntax:
X0 Drain Gate Source Body  sky130_fd_pr__nfet_g5v0d10v5
X1 Source Gate Drain Body  sky130_fd_pr__nfet_03v3_nvt

Devices:
X0 vgnd VREG vgnd vnb sky130_fd_pr__nfet_g5v0d10v5 W = 0.75u , L = 0.5u (MOS Cap)
X1 VREG CTRL vpwr vnb sky130_fd_pr__nfet_03v3_nvt    W = 1u ,  L = 0.5u (Switch)

Aux PMOS

Device Syntax:
X0 Drain Gate Source Body sky130_fd_pr__pfet_g5v0d10v5

Device:
X0 VREG cmp_out vpwr vpb sky130_fd_pr__pfet_g5v0d10v5 W = 1u ,  L = 0.5u



