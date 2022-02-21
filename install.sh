#!/bin/bash

set -e

if [ ! $(which brew) ]; then
    echo "-- Installing homebrew - a package manager for macOS"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "-- Add reqired taps"
brew tap ktemkin/oss-fpga

echo "-- Installing required homebrew packages"
brew install make verilator icarus-verilog yosys nextpnr-ice40 icestorm

echo "-- Installing Alchitry Loader"
git clone https://github.com/ianmclinden/alchitry-loader.git
cd alchitry-loader
make
sudo make install
