## Objectives
1. Understand different types of waveforms and their properties
2. Generate and analyze continuous and discrete signals
3. Work with periodic functions including sine and cosine waves
4. Create square waves and understand their characteristics
5. Visualize signals using MATLAB plotting functions

## Exercises Completed:

### Ex 1: Square wave
`squareWave.m`

<img width="1092" height="689" alt="image" src="https://github.com/user-attachments/assets/e72c1bc8-172f-489b-bb3a-80b3837f03ac" />


### Ex 2:
`contWaveform.m`

#### Figure 1:
<img width="1019" height="691" alt="image" src="https://github.com/user-attachments/assets/ff9c7bbd-42d2-4458-b64c-0c42b84b5cfe" />

#### Figure 2:
<img width="1019" height="691" alt="image" src="https://github.com/user-attachments/assets/1ac54d3e-1fe7-4e98-8468-21006b42f204" />

#### Figure 3:
<img width="1019" height="691" alt="image" src="https://github.com/user-attachments/assets/4dd01771-1c0c-4e7f-b316-b2832601f404" />

#### Figure 4:
<img width="1002" height="691" alt="image" src="https://github.com/user-attachments/assets/9fd6aa1f-aa09-4b5f-9aa6-eaaba0390d81" />

#### Figure 5:
<img width="1002" height="691" alt="image" src="https://github.com/user-attachments/assets/3af8d293-2adf-4cba-b156-a447d9420cd2" />


### Ex 3: Discrete Waveform
`discreteWaveform.m`

<img width="984" height="681" alt="image" src="https://github.com/user-attachments/assets/d85bf77f-42d1-45ba-bd57-91a50a8f2167" />


### Ex 4: Exponential, Cosine and Sine, Damped Waves
`justWaves.m`

#### Figure 1:
x = B * exp(a*t);  % Exponential growth with positive exponent

<img width="983" height="664" alt="image" src="https://github.com/user-attachments/assets/8657a135-0fbe-456d-9e60-771f8b14cb3d" />

#### Figure 2:
x = B * exp(-a*t);  % Exponential decay with negative exponent

<img width="979" height="664" alt="image" src="https://github.com/user-attachments/assets/73431dc2-54c0-43db-919e-e01790a2f693" />

#### Figure 3:
Y = exp(X/2);  % Exponential function with sparse sampling points

<img width="991" height="664" alt="image" src="https://github.com/user-attachments/assets/855e1a1c-64a3-41b3-80f4-9d4fd4092b95" />

#### Figure 4:
Smoother exponential function

<img width="991" height="664" alt="image" src="https://github.com/user-attachments/assets/116a4425-163d-4b1c-8c11-5de5e017562f" />

#### Figure 5:
x = B * r.^n;  % Discrete-time exponential using stem plot

<img width="960" height="664" alt="image" src="https://github.com/user-attachments/assets/8d48e8d0-f848-4fce-85cc-8f606cc3334a" />

#### Figure 6:
 Continuous cosine wave over one period

<img width="989" height="681" alt="image" src="https://github.com/user-attachments/assets/d922c0d2-349b-4b0e-960b-db86f704c44b" />

#### Figure 7:
Continuous sine wave over one period

<img width="989" height="681" alt="image" src="https://github.com/user-attachments/assets/e9722ee7-ff37-41c2-b56b-62d2464a2c64" />

#### Figure 8:
expsine = A * sin(W0*t) .* exp(-a*t);  % Sine wave with exponential decay envelope

<img width="980" height="681" alt="image" src="https://github.com/user-attachments/assets/ce68ddfa-df0f-4d64-b68f-69ad1f305b28" />


### Ex 5: Unit Step, Ramp Functions
`unit_Step_fncs.m`

#### Figure 1:
<img width="977" height="681" alt="image" src="https://github.com/user-attachments/assets/f6573a2a-44a1-48f7-8ddd-549ac9471cd3" />

#### Figure 2:
<img width="973" height="681" alt="image" src="https://github.com/user-attachments/assets/e00ef225-e94f-4ca5-956c-d65a5a344411" />

#### Figure 3:
<img width="970" height="195" alt="image" src="https://github.com/user-attachments/assets/0f720bb1-2849-4814-a49a-6b2e94e90bf3" />
<img width="970" height="195" alt="image" src="https://github.com/user-attachments/assets/9ad13401-aebf-42ef-b26b-5dbdb8ea727c" />
<img width="988" height="207" alt="image" src="https://github.com/user-attachments/assets/d306ab88-37bd-409e-8081-736cdb230260" />
