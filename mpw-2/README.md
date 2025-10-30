# MPW-2: OpenFASOC Digital LDO Generator in SkyWater 130nm

This directory contains the Multi-Project Wafer 2 (MPW-2) tapeout of OpenFASOC-generated Low-Dropout Regulator (LDO) variants in SkyWater 130nm technology.

## Tapeout Information

- **Shuttle**: Google Open MPW-2
- **Process**: SkyWater 130nm (SKY130)
- **Submission**: 2021
- **Fabrication**: 2021-2022
- **Status**: Manufactured
- **Submission Repository**: [foss-eda-tools MPW-002 slot-040](https://foss-eda-tools.googlesource.com/third_party/shuttle/sky130/mpw-002/slot-040)

## Overview

This tapeout features 10 different LDO variants generated using the OpenFASOC digital LDO generator framework. The variants explore the design space with different combinations of pass transistor unit cells (PT_UNIT_CELL vs PT_UNIT_CELL_W), auxiliary cells, switch counts, and capacitor configurations. This work demonstrates the capability of automated analog generation to produce multiple design variants for comprehensive characterization and optimization.

## LDO Variants

| LDO           | PT_UNIT_CELL  | PT_UNIT_CELL_W | Aux Cell  | Number of Switches | Number of Capacitors |
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

## Design Details

### PT_UNIT_CELL

**Device Syntax:**
- X0: Drain Gate Source Body sky130_fd_pr__pfet_g5v0d10v5
- X1: Drain Gate Source Body sky130_fd_pr__nfet_g5v0d10v5

**Devices:**
- X0 VREG CTRL vpwr vpb sky130_fd_pr__pfet_g5v0d10v5 W = 0.75u, L = 0.5u (Switch)
- X1 vgnd VREG vgnd vnb sky130_fd_pr__nfet_g5v0d10v5 W = 0.75u, L = 0.5u (MOS Cap)

### PT_UNIT_CELL_W

**Device Syntax:**
- X0: Drain Gate Source Body sky130_fd_pr__nfet_g5v0d10v5
- X1: Source Gate Drain Body sky130_fd_pr__nfet_03v3_nvt

**Devices:**
- X0 vgnd VREG vgnd vnb sky130_fd_pr__nfet_g5v0d10v5 W = 0.75u, L = 0.5u (MOS Cap)
- X1 VREG CTRL vpwr vnb sky130_fd_pr__nfet_03v3_nvt W = 1u, L = 0.5u (Switch)

### Aux PMOS

**Device Syntax:**
- X0: Drain Gate Source Body sky130_fd_pr__pfet_g5v0d10v5

**Device:**
- X0 VREG cmp_out vpwr vpb sky130_fd_pr__pfet_g5v0d10v5 W = 1u, L = 0.5u

## Key Features

- **Automated Generation**: All LDO variants generated using OpenFASOC framework
- **Design Space Exploration**: 10 variants exploring different architectural choices
- **Digital Control**: Digitally-controlled LDO with programmable switches
- **Multiple Topologies**: Both PMOS and NMOS-based pass transistor implementations
- **Scalable Design**: Configurable switch counts (159 or 250) and capacitor arrays (5 or 10)

## Authors

- **Yash Cherivirala** - University of Michigan, Ann Arbor (Lead)
- **Mehdi Saligane** - University of Michigan, Ann Arbor (PI)
- **David Wentzloff** - University of Michigan, Ann Arbor

## Publications

**Y. K. Cherivirala, M. Saligane, and D. D. Wentzloff**, "An open source compatible framework to fully autonomous digital ldo generation," in *2023 IEEE International Symposium on Circuits and Systems (ISCAS)*, Monterey, CA, USA, 2023, pp. 1-5.
- DOI: [10.1109/ISCAS46773.2023.10182035](https://doi.org/10.1109/ISCAS46773.2023.10182035)
- [IEEE Xplore](https://ieeexplore.ieee.org/document/10182035)

This paper describes the OpenFASOC LDO generator framework and its application to fully autonomous digital LDO design.

## Related Work

**T. Ajayi et al.**, "An open-source framework for autonomous SoC design with analog block generation," in *2020 IFIP/IEEE 28th International Conference on Very Large Scale Integration (VLSI-SoC)*, 2020, pp. 39-44.
- DOI: [10.1109/VLSI-SoC46417.2020.9344073](https://doi.org/10.1109/VLSI-SoC46417.2020.9344073)
- [IEEE Xplore](https://ieeexplore.ieee.org/document/9344073)

This paper describes the overall OpenFASOC framework used for this tapeout.

## Acknowledgements

The authors would like to thank Google and SkyWater Technology Foundry for fabrication of the test chip through the Open MPW Shuttle program.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For any technical issues, please contact Mehdi Saligane (mehdi@umich.edu).
