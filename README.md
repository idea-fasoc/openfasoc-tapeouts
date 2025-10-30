# OpenFASOC Tapeouts

This repository presents tapeouts done using OpenFASoC across multiple process technologies and foundries.

## Overview

OpenFASOC (Open-Source Fully Autonomous SoC) is a framework for automated analog circuit generation. This repository contains multiple tapeouts demonstrating various OpenFASOC-generated circuits, including temperature sensors, LDOs, operational amplifiers, and integrated systems.

## Tapeouts

### Temperature Sensor Generator

#### [mpw-1](mpw-1/) - SkyWater 130nm (Google Open MPW Shuttle)
- **Shuttle**: Google Open MPW-1
- **Process**: SkyWater 130nm
- **Content**: 64 OpenFASOC-generated temperature sensor instances
- **Features**: Comprehensive automated test setup with measurement results
- **Documentation**: Well-documented test infrastructure with Python automation
- **Status**: Manufactured and tested

This tapeout contains a fully open-source test setup solution with detailed measurement results from manufactured chips, demonstrating the complete flow from design to characterization.

#### [intel16](intel16/) - Intel 16nm OpenTitan SoC
- **Process**: Intel 16nm
- **Content**: OpenTitan SoC subset with 24 OpenFASOC-generated temperature sensors
- **Design Tools**: OpenROAD for OpenTitan, OpenFASOC for temperature sensors
- **Features**: Automated test setup with FT232H microcontroller
- **Status**: Manufactured with test infrastructure

This tapeout demonstrates the integration of OpenFASOC generators with OpenROAD-generated digital designs in an advanced process node.

### LDO Generator

#### [mpw-2](mpw-2/) - SkyWater 130nm (Google Open MPW Shuttle)
- **Shuttle**: Google Open MPW-2
- **Process**: SkyWater 130nm
- **Content**: 10 LDO (Low-Dropout Regulator) variants
- **Variants**: Different combinations of PT_UNIT_CELL configurations, switch counts, and capacitor counts
- **Focus**: Exploring design space of automatically-generated LDO circuits

### Cryogenic Test Structures

#### [mpw-6](mpw-6/) - SkyWater 130nm (Google Open MPW Shuttle)
- **Shuttle**: Google Open MPW-6
- **Process**: SkyWater 130nm
- **Content**: Cryogenic test structure
- **Application**: Low-temperature circuit characterization

#### [mpw-7](mpw-7/) - SkyWater 130nm (Google Open MPW Shuttle)
- **Shuttle**: Google Open MPW-7
- **Process**: SkyWater 130nm
- **Content**: Cryogenic test structure
- **Application**: Low-temperature circuit characterization

#### [mpw-8](mpw-8/) - SkyWater 130nm (Google Open MPW Shuttle)
- **Shuttle**: Google Open MPW-8
- **Process**: SkyWater 130nm
- **Content**: Cryogenic test structure
- **Application**: Low-temperature circuit characterization

### Operational Amplifier Generator

#### [Nanofab](Nanofab/) - NIST Nanofab Accelerator Test Structure
- **Process**: SkyWater 130nm
- **Content**:
  - CV test harnesses (2-device and 8-device)
  - Current to Time Converter (ITC)
  - Digital PLL
  - Multiple tiles with generated operational amplifiers
- **Variants**:
  - Room-temperature OpAmps
  - Cryogenic (4K) OpAmps
- **Organization**: Organized into CV_tile, PLL_tile, RT_tile, and Cryo_tile

### Security and Root of Trust

#### [OpenFASOC-RoT-IBEX-AES](OpenFASOC-RoT-IBEX-AES/) - Secure Root of Trust
- **Inspiration**: OpenTitan design
- **Content**: Secure Root of Trust (RoT) with IBEX processor and AES
- **Purpose**: Differential Power Analysis (DPA) testing and side-channel attack mitigation
- **Note**: Designed to be integrated with a secure PMU

### Analog Front-End and Mixed-Signal

#### [mpw18h1](mpw18h1/) - GF180MCU Analog Front-End for Sensor Readout
- **Process**: GlobalFoundries 180nm MCU
- **Content**: Complete analog front-end (AFE) chip for flexible sensor readout
- **Key Components**:
  - 14-bit SAR ADC (asynchronous, monotonic switching)
  - Folded-cascode operational amplifiers with programmable bias
  - Capacitive DAC and switched-capacitance circuits
  - Bias generation circuits
- **Applications**: Wearable strain/flex sensors, temperature monitoring, multi-modal sensing
- **Publication**: [IEEE Solid-State Circuits Magazine](https://ieeexplore.ieee.org/document/10571234)
- **Status**: Manufactured, tested, and published

This chip demonstrates a complete sensor readout platform for flexible laser-induced graphene sensors, designed entirely with open-source tools and successfully validated in real applications.

### Supporting Infrastructure

#### [gf180mcu_padframe](gf180mcu_padframe/) - 2023 Chipathon Padframe
- **Process**: GlobalFoundries 180nm MCU
- **Content**: Padring GDS file and GPIO resources
- **Purpose**: Supporting infrastructure for GF180MCU designs
- **Resources**: Includes Spice netlists and testbench examples

## Repository Structure

Each tapeout directory contains:
- Design files and/or GDS layouts
- Test setup documentation and scripts (where applicable)
- Measurement results (where available)
- README with specific details about that tapeout

## Technologies Used

- **SkyWater 130nm**: mpw-1, mpw-2, mpw-6, mpw-7, mpw-8, Nanofab
- **Intel 16nm**: intel16
- **GlobalFoundries 180nm MCU**: gf180mcu_padframe, mpw18h1

## Design Tools

- **OpenFASOC**: Automated analog circuit generation
- **OpenROAD**: Digital synthesis and place-and-route (intel16)
- **OpenLane**: Digital design flow (various)

## Acknowledgements

These tapeouts were made possible through:
- Google Open MPW Shuttle Program (mpw-1, mpw-2, mpw-6, mpw-7, mpw-8)
- Google and SkyWater Technology Foundry (SKY130 open-source PDK)
- Google and GlobalFoundries (GF180MCU open-source PDK)
- Intel Corporation (Intel 16nm fabrication)
- NIST Nanofab Accelerator Program
- efabless.com Multi-Project Wafer program

## Contributing Institutions

- University of Michigan, Ann Arbor - Micro and Integrated Circuits Lab (MICL)
- Brown University - Saligane Research Group

## License

Unless otherwise specified in individual directories, the source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

## More Information

For more information about OpenFASOC, visit the [OpenFASOC project repository](https://github.com/idea-fasoc/openfasoc).

## Contact

For technical issues related to specific tapeouts, please refer to the contact information in each tapeout's respective README file.
