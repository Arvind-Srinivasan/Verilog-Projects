TESTBENCH = binary_counter_tb
SRC       = binary_counter
PCF       = cu
SCANSION  = /Applications/Scansion.app

all: clean lint synthesis place upload

test: clean lint simulate

clean:
	$(RM) -rf obj_dir
	$(RM) -f $(TESTBENCH).vvp $(TESTBENCH).vcd $(TESTBENCH).txt
	$(RM) -f $(SRC).json $(SRC).asc $(SRC).bin

lint:
	verilator -Wall -Wpedantic -O3 --flatten --cdc --assert --trace --coverage -sv --lint-only $(SRC).v

simulate:
	iverilog -o $(TESTBENCH).vvp $(SRC).v $(TESTBENCH).v
	vvp $(TESTBENCH).vvp > $(TESTBENCH).txt
	open $(SCANSION) $(TESTBENCH).vcd

synthesis:
	yosys -q -p "synth_ice40 -dsp -retime -abc2 -top $(basename $(SRC)) -json $(basename $(SRC)).json" $(SRC).v

place:
	nextpnr-ice40 -q --freq 100 --promote-logic --opt-timing --package cb132 --hx8k --top $(SRC) --pcf $(PCF).pcf --asc $(SRC).asc --json $(SRC).json

upload:
	icepack $(SRC).asc $(SRC).bin
	alchitry-loader -t cu -b 0 -f $(SRC).bin
