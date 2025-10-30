# GF180MCU Analog Front-End for Sensor Readout

This tapeout features a complete analog front-end (AFE) chip designed for flexible laser-induced graphene sensor readout applications, fabricated in GlobalFoundries 180nm MCU process.

## Tapeout Information

- **Shuttle**: GlobalFoundries MPW18H1
- **Process**: GlobalFoundries 180nm MCU (GF180MCU)
- **Submission**: 2023
- **Fabrication**: 2023-2024
- **Status**: Manufactured, tested, and published

## Overview

This chip demonstrates a complete sensor readout platform designed entirely with open-source tools on GF180MCU. It has been successfully demonstrated reading out flexible sensors for wearable applications, including strain/flex sensing and temperature monitoring. This work represents a significant advancement in open-source mixed-signal design, showing that complete analog front-end systems can be designed and fabricated using open PDKs and EDA tools.

## Key Features

- **Process**: GlobalFoundries 180nm MCU (GF180MCU)
- **14-bit SAR ADC**: Asynchronous, monotonic switching architecture
- **Operational Amplifiers**: Folded-cascode topology with programmable bias for noise/power trade-offs
- **Capacitive DAC**: Switched-capacitance circuits
- **Bias Generation**: Complete bias circuitry

## Demonstrated Applications

The fabricated chip has been validated with:
- **Strain/flex sensors**: Real-time finger bending detection
- **Temperature sensors**: Body temperature tracking with 0.9989 R² accuracy
- **Multi-modal sensing**: Combining different sensor types on one platform

## Design Tools

All designs were created using open-source tools:
- [XSchem](https://xschem.sourceforge.io/stefan/index.html) for schematic capture
- [Ngspice](http://ngspice.sourceforge.net/) for simulation
- [KLayout](https://www.klayout.de/) and [Magic](http://opencircuitdesign.com/magic/) for layout
- Standard DRC/LVS verification

## Repository Contents

- **adc-gen/**: SAR ADC generator files including comparator
- **opamp-gen/**: Programmable 2-stage operational amplifier
- **cisar-gen/**: Additional circuit blocks
- **gds/**: Final GDSII layout files
- **notebooks/**: Design and analysis notebooks

## Reusable Building Blocks

This design provides proven building blocks that can be reused for other sensor applications:
- Folded-cascode OPAMP with programmable bias
- 14-bit SAR ADC
- Bias generation circuits
- Mixed-signal design patterns

Potential applications include:
- Environmental monitoring devices
- Biomedical wearables
- Industrial sensor nodes
- Custom instrumentation
- IoT edge devices with analog sensing

## Authors

- **Anhang Li** - Brown University (Lead)
- **Hongyi Wu** - Brown University
- **Mallika Lingamguntla** - Brown University
- **Ashbir Aviat Fadila** - Brown University
- **Chanho Kye** - Brown University
- **Arvind Balijepalli** - Brown University
- **Mehdi Saligane** - Brown University (PI, formerly University of Michigan)

## Publications

**A. Li et al.**, "Rapid Prototyping of Laser-Induced Graphene Sensors With Open-Source Silicon: Paving the Way for Low-Cost and Robust Flexible Wearable Sensing," *IEEE Solid-State Circuits Magazine*, vol. 16, no. 2, pp. 49-57, 2024.
- DOI: [10.1109/MSSC.2024.3390873](https://doi.org/10.1109/MSSC.2024.3390873)
- [IEEE Xplore](https://ieeexplore.ieee.org/document/10571234)

This paper presents the complete design, fabrication, and validation of the GF180MCU analog front-end chip integrated with flexible laser-induced graphene sensors for wearable sensing applications.

**Related Publications:**

**H. Wu, A. Li, G. Kielian, and M. Saligane**, "LIG-OSS: Integrated Laser-Induced-Graphene Sensor and Open-Source Silicon Chip for an Affordable and Robust Wearable Sensing System with Precise Temperature, Humidity, and Multi-modal Capabilities," in *2024 IEEE 19th International Conference on Nano/Micro Engineered and Molecular System (NEMS)*, 2024.
- DOI: [10.1109/NEMS60724.2024.10639526](https://doi.org/10.1109/NEMS60724.2024.10639526)
- [IEEE Xplore](https://ieeexplore.ieee.org/document/10639526)

## Acknowledgements

This work was fabricated through the GF180MCU open-source shuttle program. The authors thank Google and GlobalFoundries for their support of the open-source PDK and fabrication access.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
