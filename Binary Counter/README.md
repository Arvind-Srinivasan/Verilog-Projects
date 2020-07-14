# Binary Counter
Simple project using the 8 Cu LEDs to count up to 2<sup>8</sup> and display binary values.

## [binary_counter.v](binary_counter.v)
This contains all of the code for the `binary_counter` module, which has a `clk` input and `led` output to the Cu LEDs. The `counter` reg is used as an internal counter to slow down the 100 MHz clock input.

## [binary_counter_tb.v](binary_counter_tb.v)
This contains all of the code to test the `binary_counter` module, simulating the 100 MHz clock step and recording the value of the `led` output. This simulation produces a VCD (Value Change Dump) file for the first 0.1 second of operation.

## [cu.pcf](cu.pcf)
This is a generic PCF (Physical Constraints File) file containing the USB outputs, the Cu LED outputs, clock input, and reset button input pin mappings for the Alchitry Cu.

## [Makefile](Makefile)
This a generic Makefile designed around providing Make targets that each accomplish part of the full toolchain. The main commands to use are `test` to handle a simulation check workflow (`clean`, `lint`, and `simulate`) and `check` to handle a hardware check workflow (`clean`, `lint`, `synthesize`, `place`, `time`). It makes use of Scansion to display the simulation results. Once both of those checks pass, `make` using the `all` target does both checks and also run `upload`.
