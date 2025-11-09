% Simple Frequency Domain Analysis - Aperiodic Pulse
clear; close all; clc;

% Define frequency range
f = -5:0.01:5;           % Frequency from -5 Hz to 5 Hz

% Compute Fourier Transform
X = 4 * sinc(4 * f);     % X(jf) = 4*sinc(4πf)

% Create separate figures as requested
figure;
plot(f, X, 'b-', 'LineWidth', 2);
title('Fourier Transform: X(jf) = 4•sinc(4πf)');
xlabel('Frequency f (Hz)');
ylabel('X(jf)');
grid on;

figure;
plot(f, abs(X), 'r-', 'LineWidth', 2);
title('Magnitude Spectrum |X(jf)|');
xlabel('Frequency f (Hz)');
ylabel('|X(jf)|');
grid on;

figure;
plot(f, angle(X), 'g-', 'LineWidth', 2);
title('Phase Spectrum ∠X(jf)');
xlabel('Frequency f (Hz)');
ylabel('Phase (radians)');
grid on;