# CNN Accelerator on PYNQ-Z2 using Vitis HLS

This project demonstrates the complete workflow of converting a trained CNN model into FPGA hardware using Vitis HLS and deploying it on the PYNQ-Z2 board.

---

## 🔄 Project Flow

### 1️⃣ CNN Training (Google Colab)

- Train a small CNN using PyTorch.
- Dataset: CIFAR-10 (for demo purposes).
- Export trained weights as `.h` header files.

**Output:**
- `conv_w.h`
- `conv_b.h`
- `fc_w.h`
- `fc_b.h`

---

### 2️⃣ HLS Design (Vitis HLS)

- Write top-level accelerator function: `cnn_accel()`
- Add AXI interfaces using HLS pragmas.
- Configure target device: `xc7z020clg484-1`
- Set clock period: `10ns`
- Run C Synthesis.
- Generate RTL and package as IP (IP Catalog format).

**Output:**
- Verilog RTL
- Packaged IP core

---

### 3️⃣ Vivado Integration

- Create RTL project in Vivado.
- Add HLS-generated IP repository.
- Create Block Design.
- Add:
  - ZYNQ7 Processing System
  - `cnn_accel` IP
- Run Block Automation.
- Generate Bitstream.

**Output:**
- `.bit` file for FPGA

---

### 4️⃣ Deployment on PYNQ-Z2

- Load bitstream on board.
- Use Python (PYNQ framework) to:
  - Allocate memory
  - Send image data
  - Receive inference output
- Compare CPU vs FPGA execution time.

---

## 🏗️ Architecture Overview

Google Colab (Training)

  ↓

Export Weights (.h files)

  ↓

Vitis HLS (C++ → RTL)

  ↓

Vivado (IP Integration)

  ↓

PYNQ-Z2 (ARM + FPGA Execution)

---

## ⚙️ Tools Used

- Python / PyTorch
- Google Colab
- Vitis HLS 2025.2
- Vivado 2025.2
- PYNQ-Z2 (Zynq-7020)

---

## 🎯 Key Learning Outcomes

- CNN model training
- Weight export to hardware
- High-Level Synthesis (C++ → RTL)
- AXI interface design
- Zynq SoC integration
- FPGA hardware acceleration

---

## 🚀 Future Improvements

- Implement full convolution in hardware
- Add AXI DMA for high-speed transfer
- Use fixed-point quantization
- Optimize latency using loop pipelining

---

## SDG Mapping
**SDG 9 – Industry, Innovation and Infrastructure**

## Authors
- Kawin Prajith M  
- Janakiraman J
- Varshaa Manikandan
