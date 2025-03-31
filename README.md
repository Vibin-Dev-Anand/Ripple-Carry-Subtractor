# Ripple-Carry Subtractor

## Overview
This project implements a **Ripple-Carry Subtractor** using both **C programming** and **Verilog**. The ripple-carry subtractor performs binary subtraction using a series of full subtractors, similar to how a ripple-carry adder works.

## Features
- Implements a **4-bit Ripple-Carry Subtractor**.
- Written in **C** and **Verilog** for simulation and hardware implementation.
- Uses **full subtractors** to perform bitwise subtraction.
- Testbench for **Verilog simulation**.
- Sample outputs for verification.

## Repository Structure
```
Ripple-Carry-Subtractor/
│── README.md               # Project Overview
│── LICENSE                 # License Information
│── docs/
│   ├── Project_Report.pdf  # Full Project Report
│   ├── Circuit_Diagram.png # Logic Circuit Diagram
│── src/
│   ├── ripple_carry_subtractor.c  # C Program for Subtractor
│   ├── ripple_carry_subtractor.v  # Verilog Code
│── simulations/
│   ├── testbench.v         # Verilog Testbench for Simulation
│── results/
│   ├── output.txt          # Sample Output from the Code
│── .gitignore              # Ignore compiled files
```

## Installation & Usage
### Running the C Program
```sh
gcc src/ripple_carry_subtractor.c -o subtractor
./subtractor
```

### Running Verilog Simulation
```sh
iverilog -o subtractor simulations/testbench.v
vvp subtractor
```

## Output Example (C Program)
```
Enter two 4-bit binary numbers:
Input 1: 1101
Input 2: 1010
Result: 0011
```

## Future Enhancements
- Implement an **N-bit subtractor**.
- Optimize the Verilog design for **FPGA implementation**.
- Add **signed number support**.

## Contributions
Contributions are welcome! Open an issue or submit a pull request.

## License
This project is licensed under the **MIT License**.

## Contact
For queries, reach out to [your email] or open an issue in the repository.

