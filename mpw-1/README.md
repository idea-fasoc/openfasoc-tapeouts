# MPW-1: OpenFASOC Temperature Sensors in SkyWater 130nm

This directory contains the first Multi-Project Wafer (MPW-1) tapeout of OpenFASOC-generated temperature sensors in SkyWater 130nm technology.

## Contents

- **testsetup/**: Complete automated test setup with Python scripts, measurement results, and comprehensive documentation

## Overview

This tapeout features 64 OpenFASOC-generated temperature sensor instances fabricated in SkyWater 130nm. The project provides a fully open-source test setup solution that is highly automated with Python and open-source libraries.

## Key Features

- **Process**: SkyWater 130nm
- **Generator**: OpenFASOC Temperature Sensor Generator
- **Instances**: 64 temperature sensor instances
- **Test Setup**: Fully automated with Python
- **Hardware**: FT232H USB-to-GPIO bridges for chip control
- **Measurement Equipment**: Automated temperature chamber and SMU control
- **I/O Voltage**: 3.3V

## Test Setup Highlights

The test setup includes:
- Low-cost commercially-available USB control devices
- Automated temperature chamber control via Python
- Source Measurement Unit (SMU) automation
- Comprehensive measurement scripts for frequency, power, and resolution testing
- Detailed measurement results from manufactured chips

This project demonstrates a complete end-to-end flow from chip design through fabrication to comprehensive testing and characterization.

## Documentation

For detailed information about:
- Test hardware setup and wiring
- Software prerequisites and installation
- Automated testing scripts
- Measurement results

Please see the [testsetup README](testsetup/README.md).

## Author

**Qirui Zhang** - University of Michigan, Ann Arbor

## Acknowledgements

The author would like to thank Google and SkyWater for fabrication of the test chip.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For any technical issues, please contact Qirui Zhang (qiruizh@umich.com) and Mehdi Saligane (mehdi@umich.edu).
