# Crossbar

Main crossbar connects core, instruction RAM, data RAM, and peripheral bridge. If you want to generate the RTL, type
```
make main
```

Peripheral crossbar connects different light communication protocol like SPI, UART, I2C, and GPIO. If you want to generate the RTL, type
```
make peri
```