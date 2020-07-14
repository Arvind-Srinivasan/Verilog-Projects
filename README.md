# Verilog-Projects
A variety of projects using a [FOSS Verilog toolchain](https://symbiflow.github.io) for [Lattice iCE40](http://www.latticesemi.com/en/Products/FPGAandCPLD/iCE40) FPGAs on the [Alchitry Cu](https://cdn.alchitry.com/docs/Alchitry%20Cu%20Product%20Brief.pdf)

## FOSS Software Toolchain
* [Verilator](https://www.veripool.org/wiki/verilator)
* [ICARUS Verilog](http://iverilog.icarus.com)
* [Yosys Open SYnthesis Suite](http://www.clifford.at/yosys/)
* [nextpnr](http://www.clifford.at/papers/2018/nextpnr/slides.pdf)
* [Project IceStorm](http://www.clifford.at/icestorm/)
* [Alchitry Loader](https://alchitry.com/pages/alchitry-loader)

## Hardware
Uses relatively low-cost (~$75) parts:
* [Alchitry Cu](https://alchitry.com/products/alchitry-cu-fpga-development-board) dev board
    * [Lattice iCE40-HX8K FPGA](https://www.latticesemi.com/view_document?document_id=49312) with 100 MHz clock
    * [Schematic](https://cdn.shopify.com/s/files/1/2702/8766/files/alchitry_cu_sch.pdf)
![Alchitry Cu](https://cdn.shopify.com/s/files/1/2702/8766/products/DSC_3531.jpg)
* [Alchitry Io](https://alchitry.com/collections/all/products/alchitry-io) expansion board
    * Provides all needed IO connections
    * [Schematic](https://cdn.shopify.com/s/files/1/2702/8766/files/alchitry_io_sch.pdf)
![Alchitry Io](https://cdn.shopify.com/s/files/1/2702/8766/products/DSC_6210-Edit_a787ff5a-ca58-49f5-9b8a-2fca8dda3a07.jpg)

## Software
This project was tested to run on [macOS Mojave](https://en.wikipedia.org/wiki/MacOS_Mojave) 10.14.6, and may not work on other operating system or macOS versions. The following [brew](https://brew.sh) packages are required:
* `make`
* `verilator`
* `icarus-verilog`
* `yosys`
* `ktemkin/oss-fpga/nextpnr-ice40`
* `ktemkin/oss-fpga/icestorm`

Install using the following (after ensuring [Homebrew](https://docs.brew.sh/Installation) and [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) are installed):
```shell
brew install make verilator icarus-verilog yosys
brew tap ktemkin/oss-fpga
brew install --HEAD nextpnr-ice40 icestorm
git clone https://github.com/ianmclinden/alchitry-loader.git
cd alchitry-loader
make
sudo make install
cd ..
rm -rf alchitry-loader
```
## Projects
### Binary Counter
Simple project using the 8 Cu LEDs to count up to 2<sup>8</sup> and display binary values.

### Decimal Counter
Simple project using the 24 Io LEDs to count up to 24 and displays values.

## Resources
* [Verilator](https://github.com/verilator/verilator) (used for linting of Verilog source files)
* [ICARUS Verilog](https://github.com/steveicarus/iverilog) (used for simulation of Verilog source files)
* [yosys – Yosys Open SYnthesis Suite](https://github.com/YosysHQ/yosys) (synthesis of Verilog source files)
* [nextpnr](https://github.com/YosysHQ/nextpnr) (used for placement and routing after synthesis)
* [Project IceStorm](https://github.com/YosysHQ/icestorm) (used for timing analysis and bitstream generation)
* [Alchitry Loader](https://github.com/ianmclinden/alchitry-loader) (fork with macOS support for uploading to the Alchitry Cu)
* [Scansion](http://www.logicpoet.com/scansion/) (software used to read VCD files)
* [ASIC World](http://www.asic-world.com/verilog/index.html) (good Verilog reference)
* [iCEBreaker examples](https://github.com/icebreaker-fpga/icebreaker-examples) (useful Verilog examples for common tasks)
* [Verilog OS X](https://github.com/kehribar/verilog-osx) (useful makefile and simulation example)
* [Cu-Base-Project](https://github.com/alchitry/Cu-Base-Project) (base Alchitry Verilog project)
* [Alchitry Labs](https://github.com/alchitry/Alchitry-Labs)

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
