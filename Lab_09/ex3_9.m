% Exercise 3: Frequency Domain Analysis of Time-Shifted Signals

% Objective: to show impact of time-shifting on the frequency
% domain representation of signals

clear;
close all;
clc;

% Parameters
N = 256; % number of samples
n = 0:N-1;  % Time indices
f = 0.05;  % Fundamental frequency

% Signal
x = sin(2*pi*f*n) +cos(2*pi*2*f*n);

% Create shifted signals
shift1 = 50;
shift2 = -50;

x_shift1 = sin(2*pi*f*(n-shift1)) + cos(2*pi*2*f*(n-shift1));
x_shift2 = sin(2*pi*f*(n-shift2)) + cos(2*pi*2*f*(n-shift2));

% Compute FFT of all signals
X = fft(x);
X_shift1 = fft(x_shift1);
X_shift2 = fft(x_shift2);

% Frequency vector
freq = (0:N-1)/N;

% Plot magnitude spectra
figure;
subplot(2,1,1);
plot(freq, abs(X), 'b-', 'LineWidth', 2); hold on;
plot(freq, abs(X_shift1), 'r--', 'LineWidth', 1.5);
plot(freq, abs(X_shift2), 'g--', 'LineWidth', 1.5);
hold off;
title('Magnitude Spectrum: Original vs Shifted Signals');
xlabel('Normalized Frequency');
ylabel('Magnitude');
legend('Original', 'Shift +50', 'Shift -50', 'Location', 'best');
grid on;
xlim([0, 0.2]);  % Zoom in on relevant frequencies

% Plot phase spectra
subplot(2,1,2);
plot(freq, angle(X), 'b-', 'LineWidth', 2); hold on;
plot(freq, angle(X_shift1), 'r--', 'LineWidth', 1.5);
plot(freq, angle(X_shift2), 'g--', 'LineWidth', 1.5);
hold off;
title('Phase Spectrum: Original vs Shifted Signals');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
legend('Original', 'Shift +50', 'Shift -50', 'Location', 'best');
grid on;
xlim([0, 0.2]);  % Zoom in on relevant frequencies