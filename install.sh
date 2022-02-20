brew install make verilator icarus-verilog yosys
brew tap ktemkin/oss-fpga
brew install nextpnr-ice40 icestorm
git clone https://github.com/ianmclinden/alchitry-loader.git
cd alchitry-loader
make
sudo make install
