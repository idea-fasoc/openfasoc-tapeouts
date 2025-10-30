# OpenFASOC Root of Trust with IBEX and AES

This directory contains a secure Root of Trust (RoT) design inspired by OpenTitan, featuring the IBEX RISC-V processor and AES encryption engine, designed for differential power analysis (DPA) testing and side-channel attack mitigation research.

## Tapeout Information

- **Shuttle**: Google Open MPW or Chipignite
- **Process**: SkyWater 130nm (SKY130)
- **Submission**: 2021-2022
- **Status**: Designed (tapeout status TBD)

## Overview

This is a secure Root of Trust system inspired by the OpenTitan design. The chip includes the IBEX RISC-V processor and AES cryptographic engine, and is intended for testing differential power analysis (DPA) attacks and validating design techniques to mitigate side-channel attacks.

**Note**: This RoT was originally designed to be integrated with a secure Power Management Unit (PMU), but due to area constraints, only the RoT core fits in the test harness.

## Contents

- **verilog/**: RTL source files
- **openlane/**: OpenLane flow configuration and results
- **gds/**: Final GDSII layout files
- **def/**: Design Exchange Format files
- **lef/**: Library Exchange Format files
- **mag/**: Magic layout files
- **sdc/**: Synopsys Design Constraints
- **sdf/**: Standard Delay Format timing files
- **spef/**: Standard Parasitic Exchange Format files
- **spi/**: SPICE netlists
- **signoff/**: Sign-off verification reports
- **docs/**: Documentation

## Key Features

- **IBEX RISC-V Processor**: Secure processor core from lowRISC
- **AES Encryption Engine**: Hardware-accelerated cryptographic operations
- **OpenTitan-Inspired Architecture**: Following open-source security best practices
- **Side-Channel Research**: Designed for DPA testing and countermeasure validation
- **Open-Source Design Flow**: Complete design using OpenLane and open PDK

## Applications

- Hardware security research
- Side-channel attack analysis and mitigation
- Secure boot implementations
- Cryptographic accelerator testing
- Root of Trust development

## Authors

- **Mehdi Saligane** - University of Michigan / Brown University (PI)
- **OpenFASOC Security Team** - University of Michigan

## Related Work

This design is related to the Open Se Cura project taped out in Intel 16nm (see [intel16](../intel16/)):

**G. Tao et al.**, "Open se cura: First silicon results of an auditable and transparent hardware root-of-trust system using open electronic design automation in 16 nm," *IEEE Solid-State Circuits Magazine*, vol. 16, no. 2, pp. 58-66, 2024.
- DOI: [10.1109/MSSC.2024.3396138](https://doi.org/10.1109/MSSC.2024.3396138)
- [IEEE Xplore](https://ieeexplore.ieee.org/document/10530619)

## Acknowledgements

This work builds on the OpenTitan project from lowRISC and uses the OpenLane flow developed by efabless.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For any technical issues, please contact Mehdi Saligane (mehdi@brown.edu).
