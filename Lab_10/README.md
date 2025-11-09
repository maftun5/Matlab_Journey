# Lab 10: Fourier Representations

### Exercise 1: Frequency Domain Analysis
#### [code](ex1_10.m)
#### Goal: 
Understand the Fourier Transform of a simple aperiodic pulse signal and learn to interpret frequency domain representations.

##### What the Code Demonstrates:
- Time Domain: a rect pulse of width 2 seconds
- Frequency Domain: X(jf) = 4 * sinc(4*pi*f)
- A brief pulse spreads out in frequency
- Magnitude: Frequency content analysis and filter design
- Phase: System delay characterization and signal synchronization

#### Output:
<img width="1125" height="746" alt="image" src="https://github.com/user-attachments/assets/45a708b9-6d1e-4e06-95dd-a0c31784f59f" />
<img width="1118" height="746" alt="image" src="https://github.com/user-attachments/assets/be2d74f6-972e-4f9d-810c-915e4610e53c" />
<img width="1118" height="746" alt="image" src="https://github.com/user-attachments/assets/b0acb836-9ccd-4cf8-9b3b-533caf29b21c" />


### Exercise 2: Multiple Frequency Analysis
#### [code](ex2_10.m)
#### Goal: Understand how to analyse signals that contain multiple frequencies using different methods
##### A signal: x = cos(2π·100·t) + cos(2π·500·t)
##### Understanding the Four Methods used:
###### Method 1: Just a test
- Tests Fourier Transfrom implementation
- Signal: exp
- Why? to validate that code works before analyzing real signals

###### Method 2: Problem Demo
- Shows why we need frequency analysis
- Signal: actual input mized signal x = cos(2π·100·t) + cos(2π·500·t)
- Time dowmain alone cannot show frequency composition

###### Method 3: Manual Solution
- Applies FT to find hidden frequencies
- Shows clear peaks at 100 and 500 HZ
- Numerical integration using trapz()

###### Method 4: Practical Solution
- Efficient
- Shows peaks
- FFT algorithm

##### So: we tested tools, saw the problem and solved (manually with method 3 and efficiently with method 4)

#### Output: 
<img width="624" height="463" alt="image" src="https://github.com/user-attachments/assets/69ef3001-1888-479e-a302-16bcd66c4ace" />
<img width="655" height="463" alt="image" src="https://github.com/user-attachments/assets/d2130520-16ce-4cae-87ec-84921c299181" />
<img width="669" height="463" alt="image" src="https://github.com/user-attachments/assets/b0929720-7e05-47f9-8e94-3122ae17d511" />
<img width="657" height="463" alt="image" src="https://github.com/user-attachments/assets/cb7b0436-0ab7-438a-a20c-b187876fa802" />
