# BirdBot Torque Simulation and Dynamics Analysis

This MATLAB project simulates the stance phase of BirdBot, a bipedal walking robot. The focus is on modeling the dynamics using symbolic Lagrangian mechanics and computing joint torques (hip and knee) during motion, both with and without spring assistance.

## Overview

The objective is to understand the torque requirements for locomotion and assess how the inclusion of elastic elements (springs) affects joint behavior. This helps inform motor selection and control strategies for efficient and stable bipedal walking.

## Features

- Symbolic derivation of equations of motion using Lagrangian mechanics
- Numerical inverse dynamics simulation to compute required torques
- Comparative torque analysis: spring-assisted vs. springless actuation
- Visualization of trunk displacement, torque profiles, and ground reaction forces

## File Structure

- `Inverse_dynamics.m` and `Inverse_dynamics_Springless.m` runs the simulation and plots graphs
- `BirdBot_Dynamics.m` and `BirdBot_DynamicsSpringless.m` – Symbolic dynamics setup and Lagrangian formulation
- `SpringVsSpringless.m` – Comparison of torque results with and without springs
- `plots/` –  Folder for storing generated figures

## Requirements

- MATLAB R2023a or newer
- Symbolic Math Toolbox

## Usage

1. Clone or download this repository.
2. Open MATLAB and add the project folder to your path.
3. Run the main script:

