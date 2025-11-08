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
Lab_09/signal_analysis.m

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


### 





