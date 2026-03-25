# 16-bit ALU Design and Verification (Verilog)

## 📌 Overview
This project implements a 16-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs multiple arithmetic and logical operations and is verified using a testbench.

## ⚙️ Features
- 16-bit operations
- Supported operations:
  - Addition
  - Subtraction
  - AND
  - OR
  - XOR
  - Shift Left
- Zero flag detection

## 🛠 Tools Used
- Xilinx Vivado / ModelSim
- Verilog HDL

## 📂 Project Structure
- `src/` → ALU design
- `testbench/` → Simulation testbench
- `docs/` → Waveform outputs

## ▶️ How to Run
1. Open project in Vivado / ModelSim
2. Compile `alu_16bit.v` and `alu_tb.v`
3. Run simulation
4. Observe waveform outputs

## 📊 Results
The ALU correctly performs all operations as verified through simulation waveforms.

## 📷 Sample Output
(Add waveform screenshot here)

## 🚀 Future Improvements
- Add carry and overflow flags
- Implement multiplication and division
- Extend to 32-bit ALU
