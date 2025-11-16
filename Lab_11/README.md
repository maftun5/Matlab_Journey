# Lab 11: DSP Analysis

## Exercise 1: Window Functions in Spectral Analysis
**Windowing** is the process of selecting a finite segment to analyse signals in the frequency domain

- wr=ones(1, 51): creates rectangular window
- w[n] = 0.5 - 0.5*cos(2πn/M) : Hanning Window
- for exact frequencies, use rectangular window
- to detect weak signals use Hanning

##### FFT with Zero-Padding
fft(signal, N-points)

##### Normalized dB Scale
20*log10(abs(X)/max(abs(X)))  % shows magniutde in decibels

### Screenshots
###### Rectangular Window
<img width="924" height="585" alt="image" src="https://github.com/user-attachments/assets/1081c405-0ea7-429d-9592-e6f506194a16" />
###### Hanning Window
<img width="938" height="585" alt="image" src="https://github.com/user-attachments/assets/d2a30a8a-2c69-431c-b1d0-c6508733756b" />


## Exercise 2: Subsampling
**Subsampling** reduces the number of samples by keeping only every Nth sample.
Subsampled by 2: x₂[n] = x[2n] (keep every 2nd sample)
In matlab: 
`x2=x(1:2:length(x));` 
`X2=fftshift(fft(x2,500));`

### Difference
<img width="1093" height="242" alt="image" src="https://github.com/user-attachments/assets/fdde9273-a1dd-477b-a576-e349e4b9c75e" />
<img width="1093" height="223" alt="image" src="https://github.com/user-attachments/assets/37299aac-75e8-4405-9c02-0bd119acc0db" />
**Frequency axis stretched by 2**
