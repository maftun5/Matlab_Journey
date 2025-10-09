% DiscreteWave.m
% This script visualizes discrete waveforms of periodic signals

A = 1;  % amplitude
omega = pi/4; % angular frequency
n = -10:10; % discrete time samples

% generate a square wave 
x = A * square(omega*n);

figure, stem(n, x);
xlabel ('n(samples)');
ylabel('Amplitude');
title('Square signal - Discrete waveform');
