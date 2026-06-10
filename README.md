# FPGA Multi-Mode Timer and Display

VHDL-based timer and display system implemented on a Zybo Z7 FPGA board. The project supports multiple timer modes and drives an on-board display, verified through Vivado simulation and hardware testing.

## What This Project Does

This project implements a multi-mode countdown/countup timer in VHDL. Timer modes are selectable, and output is shown on the Zybo Z7's on-board seven-segment or LED display. The design was verified first in Vivado simulation and then deployed and tested on the physical board.

## Technologies Used

- VHDL hardware description language
- Zybo Z7 FPGA development board (Xilinx / AMD)
- Vivado Design Suite (synthesis, simulation, bitstream)
- XDC constraint files for pin mapping
- On-board display output (seven-segment / LEDs)

## Folder Structure

```
fpga-multimode-timer-display/
├── src/           # VHDL source files (entities, architectures)
├── constraints/   # XDC constraint files (pin assignments, timing)
├── sim/           # Simulation testbenches and waveform files
├── docs/          # Project report and design documentation
└── media/         # Screenshots, waveforms, board photos
```

## What Will Be Added

- VHDL source files for timer and display logic
- XDC constraint file for Zybo Z7
- Simulation testbenches
- Vivado project files (or scripts to recreate)
- Project report and documentation
- Simulation waveforms and board test photos

## Status

> **Files to be added.** This repository is being organized from completed coursework files.

---
*Coursework project — files being added.*
