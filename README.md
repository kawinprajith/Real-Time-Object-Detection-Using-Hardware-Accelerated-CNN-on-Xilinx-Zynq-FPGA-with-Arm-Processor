# Real-Time Object Detection Using Hardware Accelerated CNN on Xilinx Zynq FPGA with ARM Processor

## Abstract
This project presents the design and implementation of a CNN-based image processing system intended for hardware acceleration on a Xilinx Zynq SoC. The work demonstrates how compute-intensive CNN operations such as convolution and ReLU activation can be implemented using fixed-point arithmetic and HDL-friendly design techniques, enabling efficient FPGA deployment compared to CPU-only execution.

## Objective
The objective of this project is to design a CNN inference pipeline suitable for FPGA acceleration and validate its functionality using MATLAB, serving as a foundation for real-time embedded vision applications.

## Tools and Technologies
- MATLAB
- Fixed-Point Designer
- Image Processing Toolbox
- HDL-oriented design methodology
- Target Platform: Xilinx Zynq SoC

## Project Structure
MATLAB_Code/
├── cnn_conv_hdl.m # HDL-friendly CNN convolution module (Design Under Test)
├── cnn_conv_tb.m # MATLAB testbench
Images/
└── baby.jpg # Test image

## Implementation
- Image preprocessing includes resizing, grayscale conversion, normalization, and fixed-point conversion.
- CNN convolution and ReLU activation are implemented using fixed-point arithmetic.
- The convolution module is written using HDL-compatible loops to support FPGA synthesis.
- A MATLAB-based testbench is used to validate the design.

## Results
- Successful convolution and ReLU operation verified using test images.
- Fixed-point CNN design validated against software reference.
- Design confirmed to be compatible with FPGA-oriented implementation flow.

## Conclusion
The project successfully demonstrates a hardware-ready CNN convolution module using MATLAB fixed-point design techniques. The results confirm the feasibility of accelerating CNN inference on FPGA platforms such as Xilinx Zynq, offering improved performance compared to software-only execution.

## Future Scope
- Integration of multiple CNN layers
- HDL code generation using MATLAB HDL Coder
- Deployment and benchmarking on Xilinx Zynq FPGA

## SDG Mapping
**SDG 9 – Industry, Innovation and Infrastructure**

## Authors
- Kawin Prajith M  
- Janakiraman J
