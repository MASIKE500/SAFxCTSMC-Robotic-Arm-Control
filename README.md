# SAFxCTSMC-Robotic-Arm-Control
Simulation code and models for Synergistically Adaptive Fixed-Time Continuous Control of Robotic Manipulators.
# Synergistically Adaptive Fixed-Time Continuous Control for Robotic Manipulators (SAFxCTSMC)

[![MATLAB/Simulink](https://img.shields.io/badge/MATLAB%2FSimulink-R2023a%2FR2024b-blue.svg)](https://www.mathworks.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Open Source](https://img.shields.io/badge/Open%20Source-Yes-brightgreen.svg)](#)

Official MATLAB/Simulink implementation and pre-computed datasets for the paper:  
**"Synergistically Adaptive Fixed-Time Continuous Sliding Mode Control for Robotic Manipulators under Complex Disturbances"**

---

## 📌 Abstract & Overview

Industrial manipulators operating in complex unstructured environments face severe challenges from unknown lumped disturbances, including modeling uncertainties, payload variations, and joint friction. While traditional sliding mode control exhibits strong robustness, its inherent chattering defect and initial-state-dependent convergence limit its precision. 

To address these issues, this repository provides a novel **Synergistically Adaptive Fixed-Time Continuous Terminal Sliding Mode Composite Control (SAFxCTSMC)** strategy. The core novelty lies in the **dynamic bidirectional synergy between observation error and controller gain adaptation**. 

### Key Contributions & Design Philosophy
1. **Velocity-Error-Driven ASTWOS**: An Adaptive Super-Twisting Observer (ASTWOS) with equivalent control filtering is constructed to achieve rapid, smooth feedforward disturbance reconstruction without phase lag.
2. **Fixed-Time Continuous Controller (SAFxCTSMC)**: Integrates dual fractional-order terminal sliding manifolds to guarantee state convergence within a bounded time independent of initial states.
3. **Synergistic Gain-Linkage & Dynamic Boundary Layer**: Establishes an asymmetric continuous-time differential linkage that dynamically modulates controller gains and inflates/deflates boundary layers based on observation fidelity. This fundamentally eliminates chattering while maintaining high transient stiffness under severe shocks and actuator faults.

---

## 📁 Repository Structure

```text
├── simulink.slx                 # Main Simulink simulation model (ASTWOS + SAFxCTSMC + Plant)
├── Controller.slx               # Comparative controllers (ESO, STA, NTSMC, FNTSMC, ARNFTSMC, FxNTSMC)
├── Parameteri_mport.m          # MATLAB script for workspace parameter initialization
├── LICENSE                      # MIT Open-Source License
├── README.md                    # Repository documentation
└── Datasets/
    ├── data_ASTWOS_SAFxCTSMC.mat # Pre-computed output data for Proposed (SA-FxCTSMC)
    ├── data_ASTWOS_FxNTSMC.mat   # Pre-computed output data for ASTWOS + FxNTSMC
    ├── data_ASTWOS_ARNFTSMC.mat  # Pre-computed output data for ASTWOS + ARNFTSMC
    ├── data_ASTWOS_FNTSMC.mat   # Pre-computed output data for ASTWOS + FNTSMC
    ├── data_ASTWOS_NTSMC.mat    # Pre-computed output data for ASTWOS + NTSMC
    ├── data_STA_NTSMC.mat       # Pre-computed output data for STA + NTSMC
    └── data_ESO_NTSMC.mat       # Pre-computed output data for ESO + NTSMC
