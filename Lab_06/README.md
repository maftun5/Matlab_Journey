# Lab 6: Signal Visualization and Data Processing
## Objectives
- Read and visualize data from external files
- Generate and analyze discrete periodic signals
- Create growing and decaying exponential signals
- Work with rectangular pulses and ramp functions
- Use subplots for multiple signal visualization

## Exercises Completed
### Ex 1: Sales data Visualization
[script](Matlab_Journey/Lab_06/ABCSales.m)
#### Key takeaways:
- load *file*  -> loads file
- *file*(row, :) -> extracts specific row from data file
- - hold on -> overlays plots
#### Output:
<img width="1119" height="742" alt="image" src="https://github.com/user-attachments/assets/35371c71-1ec3-40c7-85b4-7f67dbfc0d69" />

### Ex 2: Discrete Square Wave
[script](Matlab_Journey/Lab_06/DiscreteWave.m)
#### Key takeaways:
- stem() -> plot discrete signals
#### Output:
<img width="1120" height="746" alt="image" src="https://github.com/user-attachments/assets/aeb85ba8-681d-48fa-b529-7374cb63d275" />

### Ex 3: Exponential Signals
[script](Matlab_Journey/Lab_06/exponentials.m)
#### Output:
<img width="1121" height="741" alt="image" src="https://github.com/user-attachments/assets/84ffad92-b86f-43d0-8c46-471fd4bf5d91" />

### Ex 4: Rectangular Pulses
[script](Matlab_Journey/Lab_06/ex3_6.m)
#### Key takeaways:
- subplot(m, n, p) where m - # of rows of plots, n - columns, p - position index
- axis tight  -> adjusts the plot axes to fit the data, makes the graph zoom in
- zeros(m, n) -> creates mxn matrix of zeros
- ones(m, n) -> mxn matrix of ones
#### Output:
<img width="1076" height="217" alt="image" src="https://github.com/user-attachments/assets/8442209b-43dc-43ae-a992-cc34333de772" />
<img width="1076" height="217" alt="image" src="https://github.com/user-attachments/assets/17f4732b-35c5-411b-b1d4-47db5cd70ed1" />
<img width="1094" height="217" alt="image" src="https://github.com/user-attachments/assets/38dd055a-c81d-4742-b030-5ea1dd249ccc" />

### Ex 5: Ramp and Step Functions
[script](RampStep.m)
#### Key takeaways:
- [A, B] -> to merge arrays
#### Output:
<img width="1093" height="236" alt="image" src="https://github.com/user-attachments/assets/9ce33968-c73b-4eb9-bcdf-1ff2d023959c" />
<img width="1098" height="236" alt="image" src="https://github.com/user-attachments/assets/7e340f90-e281-45f8-94e2-fb96d9417cf7" />
<img width="1111" height="240" alt="image" src="https://github.com/user-attachments/assets/870b5cd6-f48c-43ea-99ee-c71c2c1aab8e" />
