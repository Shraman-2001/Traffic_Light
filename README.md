# Traffic Light Controller for 4-Way Intersection (Verilog HDL, FSM)

This project implements a simple Finite State Machine (FSM)–based traffic light controller in Verilog HDL, tailored for a standard 4-way road intersection. The system manages signal transitions for North-South and East-West directions, ensuring orderly traffic flow using Red, Yellow, and Green lights[web:26][web:29][web:31].

## Features

- Fully synthesizable Verilog HDL code for FPGA or ASIC targets
- FSM-based signal sequencing for all directions
- Parameterized timers for each light phase, enabling flexible durations
- Includes a testbench for simulation and verification

## Functionality

- System powers up/reset: FSM grants North-South a Green signal, East-West is Red
- Each approach cycles through Green → Yellow → Red
- State changes are triggered by countdown timers
- After North-South completes its cycle, East-West gets a Green signal; process repeats
- Easily modify timers for custom traffic needs

## Applications

- Traffic light signal control for FPGA demo boards
- Digital design and FSM concept education
- Real-time prototypes for urban traffic management or embedded system projects
