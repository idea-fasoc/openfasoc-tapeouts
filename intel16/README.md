# Intel 16nm OpenTitan SoC Tapeout - Open Se Cura

This directory contains the Intel 16nm tapeout of an auditable and transparent hardware root-of-trust system (Open Se Cura) featuring OpenTitan subset instances and 24 OpenFASOC-generated temperature sensors.

## Tapeout Information

- **Shuttle**: Intel 16nm Research Shuttle
- **Process**: Intel 16nm FinFET
- **Submission**: 2022
- **Fabrication**: 2023
- **Status**: Manufactured, tested, and published

## Contents

- **testsetup/**: Complete automated test setup solution with Python scripts for chip validation and testing

## Overview

Open Se Cura is a hardware root-of-trust system designed to be auditable and transparent, using open electronic design automation (EDA) tools. This tapeout demonstrates the integration of:
- OpenROAD-generated OpenTitan subset instances for secure boot and cryptographic operations
- 24 OpenFASOC-generated temperature sensor instances
- Fully automated test infrastructure using Python and open-source tools
- Complete open-source design flow from RTL to GDS

The chip implements security features including AES encryption, IBEX RISC-V processor, and hardware root-of-trust capabilities. This work demonstrates that complex secure systems can be designed and fabricated using entirely open-source tools.

## Key Features

- **Process**: Intel 16nm
- **Design Tools**: OpenROAD for OpenTitan, OpenFASOC for temperature sensors
- **Test Setup**: Fully automated with Python
- **Hardware**: FT232H USB-to-GPIO/SPI microcontroller
- **I/O Voltage**: 1.2V (requires level conversion from 3.0V)

## Test Setup Documentation

For detailed information about the test setup, hardware requirements, and automated testing scripts, please see the [testsetup README](testsetup/README.md).

## Authors

- **Guanming Tao** - University of Michigan, Ann Arbor
- **Ming-Hung Chen** - University of Michigan, Ann Arbor (Test Setup Lead)
- **George Kielian** - University of Michigan, Ann Arbor
- **Borivoje Nikolic** - University of California, Berkeley
- **Kate Yick** - Intel Corporation
- **Mehdi Saligane** - University of Michigan, Ann Arbor (PI)

## Publications

**G. Tao, M. H. Chen, G. Kielian, B. Pan, K. Yick, D. Sylvester, and M. Saligane**, "Open se cura: First silicon results of an auditable and transparent hardware root-of-trust system using open electronic design automation in 16 nm," *IEEE Solid-State Circuits Magazine*, vol. 16, no. 2, pp. 58-66, 2024.
- DOI: [10.1109/MSSC.2024.3396138](https://doi.org/10.1109/MSSC.2024.3396138)
- [IEEE Xplore](https://ieeexplore.ieee.org/document/10530619)

This paper presents the first silicon results of a hardware root-of-trust system designed entirely with open-source EDA tools in an advanced 16nm process node.

## Acknowledgements

The authors would like to thank Intel Corporation for fabrication of the test chip through their research shuttle program.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For any technical issues, please contact Ming-Hung Chen (minghung@umich.edu) and Mehdi Saligane (mehdi@umich.edu).
