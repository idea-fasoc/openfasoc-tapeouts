# NIST Nanofab Accelerator Test Structure for SkyWater 130nm

This directory contains the NIST Nanofab Accelerator program tapeout featuring OpenFASOC-generated operational amplifiers and test structures in SkyWater 130nm technology.

## Tapeout Information

- **Program**: NIST Nanofab Accelerator
- **Process**: SkyWater 130nm (SKY130)
- **Submission**: 2023 (via Google Open MPW-7)
- **Fabrication**: 2023-2024
- **Status**: Manufactured
- **Submission Repository**: [foss-eda-tools MPW-007 slot-009](https://foss-eda-tools.googlesource.com/third_party/shuttle/sky130/mpw-007/slot-009)

## Overview

This tapeout demonstrates OpenFASOC's capability to generate operational amplifiers for both room-temperature and cryogenic (4K) operation. The design includes comprehensive test structures for characterizing analog circuit performance and validating the OpenFASOC generator framework across different operating conditions.

## Contents

### Standalone Blocks

- **cv_simple_top**: 2-device CV (capacitance-voltage) test harness
- **cv_octal**: 8-device CV test harness
- **ITC**: Current-to-time converter
- **PLL**: Digital phase-locked loop

### Integrated Tiles

- **CV_tile**: A tile containing multiple copies of CV test structures and built-in DUTs (devices under test)
- **PLL_tile**: A tile containing the PLL, the ITC, and an array of generated room-temperature operational amplifiers
- **RT_tile**: A tile of generated room-temperature operational amplifiers
- **Cryo_tile**: A tile of generated cryogenic (4K) operational amplifiers

## Key Features

- **Operational Amplifier Generation**: Automated generation of OpAmps using OpenFASOC
- **Multi-Temperature Operation**: Both room-temperature and cryogenic (4K) variants
- **Test Infrastructure**: Comprehensive CV test structures and current-to-time converters
- **Digital Integration**: PLL and timing circuits integrated with analog blocks
- **Modular Design**: Tiled architecture for efficient characterization

## Applications

- Cryogenic analog circuits for quantum computing
- Ultra-low-noise sensor readout
- Precision instrumentation amplifiers
- Mixed-signal system-on-chip designs
- Characterization infrastructure for open PDKs

## Authors

- **Mehdi Saligane** - Brown University (PI, formerly University of Michigan)
- **OpenFASOC Development Team** - University of Michigan / Brown University

## Related Publications

**A. Hammoud et al.**, "Reinforcement Learning-Enhanced Cloud-Based Open Source Analog Circuit Generator for Standard and Cryogenic Temperatures in 130-nm and 180-nm OpenPDKs," in *Proceedings of the 43rd IEEE/ACM International Conference on Computer-Aided Design (ICCAD)*, 2024.
- DOI: [10.1145/3676536.3676888](https://doi.org/10.1145/3676536.3676888)
- [ACM Digital Library](https://dl.acm.org/doi/10.1145/3676536.3676888)

This paper describes RL-enhanced analog circuit generation including operational amplifiers for cryogenic temperatures.

## Acknowledgements

This work was supported by the NIST Nanofab Accelerator Program. The authors thank Google and SkyWater Technology Foundry for fabrication through the open-source PDK program.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For any technical issues, please contact Mehdi Saligane (mehdi@brown.edu).
