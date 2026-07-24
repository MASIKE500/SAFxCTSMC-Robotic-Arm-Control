# SAFxCTSMC-Robotic-Arm-Control
Simulation code and models for Synergistically Adaptive Fixed-Time Continuous Control of Robotic Manipulators.
# SAFxCTSMC & ASTWOS: Synergistically Adaptive Fixed-Time Continuous Control for Robotic Manipulators

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![MATLAB](https://img.shields.io/badge/MATLAB-R2023a%2FR2024b-orange.svg)](https://www.mathworks.com/products/matlab.html)

Official open-source repository and computational reproducibility package for the manuscript:
> **"Synergistically Adaptive Fixed-Time Continuous Sliding Mode Control for Robotic Manipulators under Complex Disturbances"**

---

## 💡 Control Philosophy & Design Motivation

Industrial manipulators operating in unstructured environments face multi-source lumped disturbances, including joint Coulomb friction jumps, payload drops, and actuator loss-of-effectiveness (LOE) faults. Conventional composite control architectures treat disturbance observation and feedback control as non-cooperative, isolated modules, forcing controllers to maintain conservative switching gains that excite severe control torque chattering.

To break the fundamental trade-off between **fast transient convergence, active fault tolerance, and chatter-mitigated smooth torque**, this repository implements a novel dual-synergy framework:

1. **Velocity-Error-Driven Adaptive Super-Twisting Observer (ASTWOS):**
   - Incorporates a velocity-observation-error driven dual-mode hysteresis adaptive law to track time-varying disturbance bounds without prior knowledge.
   - Employs **equivalent control low-pass filtering** to extract smooth disturbance feedforward, eliminating chattering at the observation source.

2. **Synergistically Adaptive Fixed-Time Continuous Controller (SAFxCTSMC):**
   - **Fixed-Time Convergence:** Utilizes dual fractional-order terminal sliding manifolds ($1 < \gamma_1 < 2$ and $0 < \gamma_2 < 1$) guaranteeing initial-state-independent convergence.
   - **Asymmetric Continuous Gain Linkage:** Establishes a dynamic bridge where the observer's velocity error $\sigma_{obs}$ drives the controller's switching gains via an asymmetric differential equation ($\tau_{rise} \ll \tau_{fall}$). Controller stiffness instantly surges during transient shocks and smoothly decays during steady states.
   - **Dynamic "Breathing" Boundary Layer:** Expands the sliding boundary layer $\phi_i(t)$ proportionally to observation errors to absorb transient impact energy, and contracts it during steady states for sub-milliradian precision.

---

## 📁 Repository Structure

```text
├── Parameteri_mport.m          # Parameter initialization script for robot dynamics & gains
├── simulink.slx                # Main Simulink simulation block diagram
├── data_ESO_NTSMC.mat          # Pre-computed simulation outputs: ESO + NTSMC
├── data_STA_NTSMC.mat          # Pre-computed simulation outputs: STA + NTSMC
├── data_ASTWOS_NTSMC.mat        # Pre-computed simulation outputs: ASTWOS + NTSMC
├── data_ASTWOS_FNTSMC.mat       # Pre-computed simulation outputs: ASTWOS + FNTSMC
├── data_ASTWOS_ARNFTSMC.mat     # Pre-computed simulation outputs: ASTWOS + ARNFTSMC
├── data_ASTWOS_FxNTSMC.mat      # Pre-computed simulation outputs: ASTWOS + FxNTSMC
├── data_ASTWOS_SAFxCTSMC.mat    # Pre-computed simulation outputs: Proposed SAFxCTSMC Framework
├── LICENSE                     # Open-source MIT License
└── README.md                   # Repository documentation
