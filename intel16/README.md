# Intel 16nm OpenTitan SoC Tapeout

This directory contains the Intel 16nm tapeout of an OpenTitan chip with OpenROAD-generated OpenTitan subset instances and 24 OpenFASOC-generated temperature sensor instances.

## Contents

- **testsetup/**: Complete automated test setup solution with Python scripts for chip validation and testing

## Overview

This tapeout demonstrates the integration of:
- OpenROAD-generated OpenTitan subset instances
- 24 OpenFASOC-generated temperature sensor instances
- Fully automated test infrastructure using Python and open-source tools

The chip is controlled through low-cost commercially-available microcontrollers, making the test setup accessible and reproducible.

## Key Features

- **Process**: Intel 16nm
- **Design Tools**: OpenROAD for OpenTitan, OpenFASOC for temperature sensors
- **Test Setup**: Fully automated with Python
- **Hardware**: FT232H USB-to-GPIO/SPI microcontroller
- **I/O Voltage**: 1.2V (requires level conversion from 3.0V)

## Test Setup Documentation

For detailed information about the test setup, hardware requirements, and automated testing scripts, please see the [testsetup README](testsetup/README.md).

## Authors

- **Ming-Hung Chen** - University of Michigan, Ann Arbor
- **Advisor**: Mehdi Saligane - University of Michigan, Ann Arbor

## Acknowledgements

The authors would like to thank Intel for fabrication of the test chip.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For any technical issues, please contact Ming-Hung Chen (minghung@umich.edu) and Mehdi Saligane (mehdi@umich.edu).
