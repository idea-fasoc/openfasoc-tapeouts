# 2023 Chipathon Padframe for GF180MCU

This directory contains the padframe and I/O resources from the 2023 Chipathon event for the GlobalFoundries 180nm MCU (GF180MCU) process.

## Event Information

- **Event**: 2023 Chipathon
- **Process**: GlobalFoundries 180nm MCU (GF180MCU)
- **Year**: 2023
- **Purpose**: Educational and community tapeout event

## Overview

This padframe provides a standard I/O ring for GF180MCU designs, enabling multiple projects to share silicon area in a multi-project wafer. The padframe includes GPIO cells, power distribution, and test structures necessary for chip-level integration. This resource was developed to support the growing open-source silicon community using the GF180MCU PDK.

## Contents

* **RING_PAD.gds**: The padring GDSII layout file
* **gf180mcu_fd_io.spice**: SPICE netlist file in ngSpice format, converted by OpenPDK from the original CDL netlist
* **tb/\***: Testbench examples using Xschem for circuit simulation and verification

## Key Features

- **5V I/O Support**: Compatible with gf180mcu_fd_io 5V inline non-CUP GPIO cells
- **Standard Interface**: Provides consistent I/O interface for multi-project integration
- **Open Source**: Fully open design files and netlists
- **Simulation Ready**: Includes SPICE models and Xschem testbenches
- **Community Resource**: Enables easier participation in GF180MCU tapeouts

## Resources

* [gf180mcu_fd_io 5V inline non-CUP GPIO Documentation](https://gf180mcu-pdk.readthedocs.io/en/latest/IPs/IO/gf180mcu_fd_io/index.html): Official GPIO cell documentation
* [GF180 IO Library Github Repository](https://github.com/google/globalfoundries-pdk-libs-gf180mcu_fd_io/): Complete library with GDS, LEF, netlists, synthesis libraries, and Verilog models

## Applications

- Multi-project wafer (MPW) submissions
- Educational chip design projects
- Community tapeout events (Chipathons)
- Open-source ASIC development
- Mixed-signal system integration

## Organizers

- **2023 Chipathon Organizers**
- **OpenFASOC Team** - University of Michigan / Brown University

## Acknowledgements

This padframe was developed to support the 2023 Chipathon event. The authors thank Google and GlobalFoundries for their support of the open-source GF180MCU PDK and for enabling community access to silicon fabrication.

## License

The padframe design is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

For questions about using this padframe, please refer to the GF180MCU PDK documentation or contact the OpenFASOC team.
