# FPGA Ethernet Traffic Visualizer (TraficReader)

## Overview

This project demonstrates the use of a Field-Programmable Gate Array (FPGA) to capture raw data packets from an Ethernet network and visualize them in real-time on a standard VGA monitor. The system is designed entirely in Verilog HDL and implemented on an Altera Cyclone IV FPGA.

The core of the project involves interfacing the FPGA with an ENC28J60 Ethernet controller via SPI to receive network data, and simultaneously generating the precise timing signals required to drive a VGA display. The received data is then rendered on the screen as a continuous stream of characters.

---

## Current Status: In Development

**This project is currently a work in progress.** The foundational modules for SPI communication, VGA signal generation, and initial data display have been implemented and are functional. However, there is a known issue with the real-time data update mechanism.

### Known Issues
*   **Data Refresh Problem:** The system successfully reads the first packet from the ENC28J60's buffer and displays its content correctly on the VGA monitor. However, subsequent data packets that are received by the Ethernet module are not being correctly refreshed on the screen. The display remains static after the first successful render, even though new data is available. The primary challenge is to properly trigger the update of the video buffer (`text_buffer`) when a new packet arrives.

---

## Core Functionality

*   **Ethernet Data Interception:** Captures Ethernet data using the ENC28J60 module.
*   **SPI Communication:** Implements a custom SPI master controller on the FPGA to communicate with the Ethernet module.
*   **VGA Signal Generation:** Generates standard 640x480 VGA timing signals (HSYNC, VSYNC).
*   **Real-Time Display:** Processes the incoming data stream and displays it as text on the VGA monitor.
*   **Hardware-Based Solution:** All logic, from packet reception to video signal generation, is handled in parallel by the FPGA hardware, ensuring high performance and low latency.

---

## Hardware Requirements

*   **FPGA Development Board:** An Altera Cyclone IV EP4CE6 based board.
*   **Ethernet Module:** An ENC28J60 Ethernet controller module.
*   **Display:** A standard VGA monitor.
*   **Programmer:** A JTAG programmer for the FPGA (e.g., USB-Blaster).
*   **Connecting Wires:** For connecting the Ethernet module to the FPGA's GPIO pins.

---

## Project Architecture (Verilog Modules)

The project is built using a modular design in Verilog, with each module responsible for a specific task.

### 1. `top_level`
This is the main module that instantiates and connects all other sub-modules, acting as the structural backbone of the entire design.

### 2. `spi_master`
*   **Purpose:** Manages the SPI communication protocol to interact with the ENC28J60 Ethernet controller.
*   **Implementation:** It is designed as a Finite State Machine (FSM) with three main states:
    *   `IDLE`: Waits for a start signal to begin a transaction.
    *   `TRANSFER`: Clocks out data to the slave and clocks in data from the slave, bit by bit.
    *   `DONE`: Indicates that the byte transfer is complete and stores the received data.
*   **Function:** This module is responsible for reading the received data packets from the ENC28J60's buffer.

### 3. `clk_divider`
*   **Purpose:** To generate the necessary clock frequencies for different parts of the system.
*   **Function:** It takes the board's main 50MHz clock as input and generates a 25MHz clock signal, which is required for the 640x480 VGA timing controller.

### 4. `vga_sync`
*   **Purpose:** To generate the essential VGA timing signals.
*   **Function:** This module uses the 25MHz clock to create the horizontal sync (`hsync`) and vertical sync (`vsync`) pulses according to the VESA standard for 640x480@60Hz resolution. It also provides pixel coordinates (`x`, `y`) and a `video_on` signal that indicates when the electron beam is within the visible display area.

### 5. `font_rom`
*   **Purpose:** To store the character bitmap data.
*   **Function:** This module acts as a simple Read-Only Memory (ROM). It takes an ASCII character code and a row number (0-7) as input and outputs an 8-bit value representing the pixel pattern for that specific row of the character. This allows the system to draw any ASCII character on the screen.

### 6. `vga_display`
*   **Purpose:** This is the core video-rendering module that orchestrates the display logic.
*   **Function:**
    1.  It receives the character data from the `spi_master` module and stores it in an internal text buffer (`text_buffer`).
    2.  It continuously receives the current pixel coordinates (`x`, `y`) from the `vga_sync` module.
    3.  Based on the coordinates, it determines which character from the buffer should be displayed at that position.
    4.  It calls the `font_rom` module with the appropriate character code and row to get the pixel data.
    5.  Finally, it drives the `rgb` output pins to either draw a pixel (e.g., white) or leave it blank (black), effectively rendering the text on the screen.

---

## Development Environment

*   **HDL:** Verilog
*   **Synthesis & Implementation:** Altera Quartus II (Version 13.2 or similar)
*   **Simulation (Optional):** ModelSim or any other Verilog simulator.

