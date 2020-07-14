TESTBENCH = decimal_counter_tb
SRC       = decimal_counter
PCF       = cu_io
SCANSION  = /Applications/Scansion.app

.PHONY: all test check clean lint simulate synthesize place time upload
all: clean lint simulate synthesize place time upload

test: clean lint simulate

check: clean lint synthesize place time

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

synthesize:
	yosys -q -p "synth_ice40 -dsp -abc9 -abc2 -top $(basename $(SRC)) -json $(basename $(SRC)).json" $(SRC).v

place:
	nextpnr-ice40 -q --freq 100 --promote-logic --opt-timing --package cb132 --hx8k --top $(SRC) --pcf $(PCF).pcf --asc $(SRC).asc --json $(SRC).json

time:
	icetime -c 100 -mt -d hx8k -p $(PCF).pcf $(SRC).asc

upload:
	icepack $(SRC).asc $(SRC).bin
	alchitry-loader -t cu -b 0 -f $(SRC).bin
