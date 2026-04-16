# 🔐 Password Lock FSM Project

This project implements a **Finite State Machine (FSM)** based password lock system using **Verilog**, simulating a secure button input sequence to activate an unlock signal. Built and tested using **Vivado**, the system demonstrates synchronous digital design, simulation, and waveform analysis skills.

---

## 🎯 Project Overview

- **Type**: Moore Machine FSM
- **Password Sequence**: `A → B → C → A`  
  (Encoded as `00, 01, 10, 00`)
- **Behavior**: FSM transitions through states with each button press. If the correct sequence is entered, the output `unlock` goes high.

---

## 🧰 Tools Used

- **HDL**: Verilog 
- **Simulation Environment**: Xilinx Vivado
- **Waveform Analysis**: Vivado Simulator

---

## 🧱 Files Included

| File                | Description                                       |
|---------------------|---------------------------------------------------|
| `passwordlock_fsm.v`| Main FSM module with state machine logic          |
| `tb_passwordlock.v` | Testbench to simulate correct & incorrect inputs  |
| `waveform.png`      | Snapshot of simulation waveform                   |
| `README.md`         | Project documentation and instructions            |

---

## 💡 Features

- Implements FSM using 5 states: S0, S1, S2, S3, UNLOCK
- Detects a specific button sequence and activates `unlock`
- Resets to idle state on incorrect input or after unlock
- Includes clean, waveform-friendly design for Vivado analysis

---

## 🧪 How to Run the Simulation

1. Clone the repo or download the files
2. Open Vivado and create a new project
3. Add both `passwordlock_fsm.v` and `tb_passwordlock.v` to your sources
4. Run behavioral simulation
5. Add signals like `clk`, `reset`, `key`, `unlock`, and `current_state` to waveform
6. Observe state transitions and verify password logic

---


## 👨‍💻 Author

Created by Aavya a mini-project on digital design and FSM-based security systems using Verilog.

---

## 📚 Future Improvements

- Support for longer password sequences
- Lockout mechanism after multiple failed attempts
- Display status on 7-segment or LCD output
- Switch/button input from FPGA board for real-time demo
