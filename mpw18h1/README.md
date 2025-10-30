# GF180MCU Analog Front-End for Sensor Readout

This tapeout features a complete analog front-end (AFE) chip designed for flexible laser-induced graphene sensor readout applications, fabricated in GlobalFoundries 180nm MCU process.

## Overview

This chip demonstrates a complete sensor readout platform designed entirely with open-source tools on GF180MCU. It has been successfully demonstrated reading out flexible sensors for wearable applications, including strain/flex sensing and temperature monitoring.

**Published in**: [IEEE Solid-State Circuits Magazine](https://ieeexplore.ieee.org/document/10571234)

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

**Saligane Research Group**
- University of Michigan (original work)
- Brown University (current)

## Publication

For detailed schematics, measurement results, and complete design methodology, see the [IEEE SSCM paper](https://ieeexplore.ieee.org/document/10571234).

## Acknowledgements

This work was fabricated through the GF180MCU open-source shuttle program.

## License

The source code is released under [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
