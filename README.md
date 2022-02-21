# Verilog Projects
A variety of projects using a FOSS Verilog toolchain for Lattice iCE40 FPGAs on the Alchitry Cu.

## FOSS Software Toolchain
* [Verilator](https://www.veripool.org/wiki/verilator)
* [ICARUS Verilog](http://iverilog.icarus.com)
* [Yosys Open SYnthesis Suite](http://bygone.clairexen.net/yosys/)
* [nextpnr](https://arxiv.org/pdf/1903.10407.pdf)
* [Project IceStorm](http://bygone.clairexen.net/icestorm/)
* [Alchitry Loader](https://github.com/alchitry/alchitry-loader)

## Hardware
Uses relatively low-cost (~$75) parts:
* [Alchitry Cu](https://alchitry.com/boards/cu) dev board
    * [iCE40-HX8K](https://www.latticesemi.com/view_document?document_id=49312) FPGA with 100 MHz clock
    * [Schematic](https://cdn.alchitry.com/docs/alchitry_cu_sch.pdf)
![Alchitry Cu](https://images.squarespace-cdn.com/content/v1/5f283b4a5fd0073706fbf137/1630506604992-S58Z72EMZJTXOMCYUOPC/DSC_3531.jpg)
* [Alchitry Io](https://alchitry.com/boards/cu-1-1) expansion board
    * Provides all needed IO connections
    * [Schematic](https://cdn.alchitry.com/docs/alchitry_io_sch.pdf)
![Alchitry Io](https://images.squarespace-cdn.com/content/v1/5f283b4a5fd0073706fbf137/1630507752925-YTRT9U1OBHTRLT3L53BR/DSC_6210-Edit.jpg)

## Software
This project was tested to run on macOS Mojave 10.14.6, and may not work on other operating system or macOS versions. The following [brew](https://brew.sh) packages are required:
* `make`
* `verilator`
* `icarus-verilog`
* `yosys`
* `ktemkin/oss-fpga/nextpnr-ice40`
* `ktemkin/oss-fpga/icestorm`

Install via the `install.sh` script
```shell
./install.sh
```
## Projects
### [Binary Counter](Binary%20Counter)
Simple project using the 8 Cu LEDs to count up to 2<sup>8</sup> and display binary values.

### [Decimal Counter](Decimal%20Counter)
Simple project using the 24 Io LEDs to count up to 24 and displays values.

## Resources
* [Verilator](https://github.com/verilator/verilator) (used for linting of Verilog source files)
* [ICARUS Verilog](https://github.com/steveicarus/iverilog) (used for simulation of Verilog source files)
* [yosys – Yosys Open SYnthesis Suite](https://github.com/YosysHQ/yosys) (synthesis of Verilog source files)
* [nextpnr](https://github.com/YosysHQ/nextpnr) (used for placement and routing after synthesis)
* [Project IceStorm](https://github.com/YosysHQ/icestorm) (used for timing analysis and bitstream generation)
* [Alchitry Loader](https://github.com/ianmclinden/alchitry-loader) (fork with macOS support for uploading to the Alchitry Cu)
* [Scansion](http://www.logicpoet.com/scansion/) (software used to read VCD files)
* [ASIC World](http://www.asic-world.com/verilog/index.html) (Verilog reference)
* [iCEBreaker examples](https://github.com/icebreaker-fpga/icebreaker-examples) (useful Verilog examples for common tasks)
* [Verilog OS X](https://github.com/kehribar/verilog-osx) (useful makefile and simulation example)
* [Cu-Base-Project](https://github.com/alchitry/Cu-Base-Project) (base Alchitry Verilog project)
* [Alchitry Labs](https://github.com/alchitry/Alchitry-Labs) (Alchitry IDE providing some default files and examples)

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
