% discreteWaveform.m

A = 1;  % amplitude
omega = pi/4;
n = -10:10;
x = A * square(omega*n);  % create square wave
figure, stem(n, x);
title('Square signal - Discrete waveform');
