# Lab 9: Advanced Concepts in Time-Shifting and Discrete-Time Signals

## Key Concepts:
#### **Periodecity**:
A discrete-time signal *x[n]* is periodic with period N if: x[n] = x[n+N] for all n
#### Symmetry:
Even signal -> x[n] = x[−n]
Odd signal -> x[n] = −x[−n]
#### Time-Shifting:
y[n] - time shifted signal. Can be represented as:
y[n] = x[n-k]
##### Positive k: Signal delay
##### Negative k: Signal Advance

## MATLAB Implementation

### Signal Time Shifting and Spectral Analysis
[signal_analysis.m](signal_analysis.m)

#### Key Takeaways:
* fft(): Computes Discrete Fourier Transfrom
* fftshift(): Centers frequency spectrum at zero
* fs - frequency sample
* N ( FFT length) - controls frequency resolution
* shift_samples - control time shift amount

- Magnitude spectrum remains identical after time-shifting
- Phase spectrum changes linearly with frequency
- Signal energy distribution across frequencies is preserved

#### Notes:
Time-shifting in time domain = Phase shift in frequency domain

#### Output:
<img width="972" height="139" alt="image" src="https://github.com/user-attachments/assets/ac8b072e-0653-4f98-8ead-54d9215307b8" />
<img width="972" height="139" alt="image" src="https://github.com/user-attachments/assets/05c1ce7d-c3e2-44ee-971b-4be5657859f8" />
<img width="975" height="114" alt="image" src="https://github.com/user-attachments/assets/e8fa2585-afe0-4d8d-804e-3264294d5f0b" />
<img width="975" height="114" alt="image" src="https://github.com/user-attachments/assets/e71c7f1e-c8b1-4fcf-8096-2d28af3d8ab1" />
<img width="995" height="139" alt="image" src="https://github.com/user-attachments/assets/6e775581-5256-47b6-a5f0-3573ecf93478" />

### Exercise 1: Time-Shifting and Signal Characteristics
[ex1_9.m](ex1_9.m)
##### Objective: Explore the effects of time-shifting on different signal characteristics.
##### Task:
- • Generate a discrete-time signal x[n] = sin(2πfn) where f = 0.1.
- • Time-shift this signal by +10,-10, and +30 samples.
- • Plot the original and each shifted signal on the same graph with different colors.
- • Describe how the time-shift affects the signal in terms of phase and alignment.

#### Output:
<img width="1024" height="746" alt="image" src="https://github.com/user-attachments/assets/ac500cb2-69a9-4688-af71-48dc44ae74bb" />
**The lines are overlaying each other. But if we decrease *f*, it will be more visually clear**
<img width="1024" height="746" alt="image" src="https://github.com/user-attachments/assets/24c2f57b-deca-4ff3-8f8a-57ba70d55ace" />


### Exercise 2: System Response to time shifting
[ex2_9.m](ex2_9.m)
##### Objective: Analyze the system response to a time-shifted input using a simple system.
##### Task:
- • Consider a system y[n] = x[n]−0.5x[n−1].
- • Generate a unit pulse signal x[n] = δ[n] and apply it to the system.
- • Shift the unit pulse by 10 samples, apply it to the same system, and plot the output.
- • Compare the output of the shifted input to the original output

#### Output:
<img width="844" height="621" alt="image" src="https://github.com/user-attachments/assets/ab9d0304-20d4-417b-ac76-291fa8840109" />

### Exercise 3: Frequency Domain Analysis of Time Shifted Signals
[ex3_9.m](ex3_9.m)
##### Objective: Understand the impact of time-shifting on the frequency domain representation of signals.
##### Task:
- • Use the signal x[n] = sin(2πfn) +cos(2π2fn) where f = 0.05.
- • Compute and plot the Fast Fourier Transform (FFT) of the signal.
- • Time-shift the signal by +50 and-50 samples and compute the FFT for each.
- • Plot the magnitude spectrum of the original and shifted signals on the same graph.

#### Output:
<img width="1015" height="358" alt="image" src="https://github.com/user-attachments/assets/7818bb51-3685-460d-8f2d-f4b53cec9f1a" />
<img width="999" height="359" alt="image" src="https://github.com/user-attachments/assets/1e683edd-6bf2-44b4-810d-ec046be68faf" />


### Exercise 4:Time-Shift Interaction
[ex4_9.m](ex4_9.m)
##### Objective: Modify the provided MATLAB code to allow dynamic input for the time shift value ‘tt‘. Plot the results for different values of ‘tt‘ entered by the user.
##### Task:
1. Add a prompt to let the user input a time shift value.
2. Based on the input, plot the time-shifted signals dynamically.
3. Include comments to explain how changing ‘tt‘ affects each plot.

#### Output:
###### Time shift entered is 2
<img width="867" height="616" alt="image" src="https://github.com/user-attachments/assets/3fb79541-fb45-4975-9845-de968e10485e" />
###### Time shift entered is -4
<img width="856" height="617" alt="image" src="https://github.com/user-attachments/assets/0a5346a9-d664-457a-846c-6b847a6d9854" />
