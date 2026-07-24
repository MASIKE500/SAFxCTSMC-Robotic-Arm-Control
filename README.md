# SAFxCTSMC-Robotic-Arm-Control
Simulation code and models for Synergistically Adaptive Fixed-Time Continuous Control of Robotic Manipulators.
# SAFxCTSMC-Robotic-Arm-Control

Source code and simulation models for the manuscript:
> **"Synergistically Adaptive Fixed-Time Continuous Sliding Mode Control for Robotic Manipulators under Complex Disturbances"**

## 📌 Software Requirements
- MATLAB / Simulink (R2023a or R2024b)
- Robotics System Toolbox
- Simscape Multibody

## 🚀 How to Run the Simulation
1. Set the MATLAB current folder directory to the root of this repository.
2. Run the parameter initialization script in the MATLAB Command Window:
   ```matlab
   init_fr3


Open the primary Simulink model Step7_ASTO_FxST_NTSMC.slx and click Run.
To compute quantitative metrics (RMSE, MAX, ISU, ITAE) and export Excel data for plotting, run:
