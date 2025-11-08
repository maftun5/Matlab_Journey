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
signal_analysis.m

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
