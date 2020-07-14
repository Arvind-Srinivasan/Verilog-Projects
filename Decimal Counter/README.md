# Decimal Counter
Simple project using the 24 Io LEDs to count up to 24 and displays values.

## [decimal_counter.v](decimal_counter.v)
This contains all of the code for the `decimal_counter` module, which has a `clk` input and `io_led` output to the Io LEDs. The `counter` reg is used as an internal counter to slow down the 100 MHz clock input.

## [decimal_counter_tb.v](decimal_counter_tb.v)
This contains all of the code to test the `decimal_counter` module, simulating the 100 MHz clock step and recording the value of the `io_led` output. This simulation produces a VCD (Value Change Dump) file for the first 0.2 second of operation.

## [cu_io.pcf](cu_io.pcf)
This is a generic PCF (Physical Constraints File) file containing the USB outputs, the Cu LED outputs, the Io LED outputs, clock input, and reset button input pin mappings for the Alchitry Cu and Alchitry Io.

## [Makefile](Makefile)
This a generic Makefile designed around providing Make targets that each accomplish part of the full toolchain. The main commands to use are `test` to handle a simulation check workflow (`clean`, `lint`, and `simulate`) and `check` to handle a hardware check workflow (`clean`, `lint`, `synthesize`, `place`, `time`). It makes use of Scansion to display the simulation results. Once both of those checks pass, `make` using the `all` target does both checks and also run `upload`.
