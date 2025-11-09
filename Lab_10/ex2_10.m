% Exercise 2: Multiple Frequency Signals - Fourier Analysis
% Analysis of signals with multiple frequency components
clear; close all; clc;

% Method 1: Manual Fourier Transform using trapz (Integration)
fprintf('\n--- Method 1: Manual Fourier Transform ---\n');

% Define time vector
t = -2:0.01:2;
fprintf('Time vector: %.2f to %.2f seconds\n', min(t), max(t));

% Manual Fourier Transform calculation
k = 0;
frequencies = -5:0.01:5;  % Frequency range from -5 Hz to 5 Hz
X_manual = zeros(size(frequencies));

for f = frequencies
    k = k + 1;
    % Fourier Transform formula: ∫x(t)e^(-j2πft)dt
    X_manual(k) = trapz(t, exp(-j*2*pi*f*t));
end

% Plot manual Fourier Transform
figure('Position', [100, 100, 1200, 800]);

subplot(2,2,1);
plot(frequencies, real(X_manual), 'b-', 'LineWidth', 2);
hold on;
plot(frequencies, imag(X_manual), 'r-', 'LineWidth', 2);
title('Manual Fourier Transform (trapz method)');
xlabel('Frequency f (Hz)');
ylabel('X(f)');
legend('Real Part', 'Imaginary Part', 'Location', 'best');
grid on;
xlim([-2, 2]);

% Method 2: Multiple Frequency Signal Analysis
fprintf('\n--- Method 2: Multiple Frequency Signal ---\n');

% Parameters for multiple frequency signal
N = 250;                    % Number of samples
ts = 0.0002;               % Sampling time (seconds)
deltaf = 1/(N*ts);         % Frequency resolution

% Create time vector
t_multiple = [0:N-1]*ts;
fprintf('Sampling frequency: %.1f Hz\n', 1/ts);
fprintf('Frequency resolution: %.2f Hz\n', deltaf);

% Create signal with two frequency components
x = cos(2*pi*100*t_multiple) + cos(2*pi*500*t_multiple);
fprintf('Signal contains: 100 Hz + 500 Hz components\n');

% Plot input signal
subplot(2,2,2);
plot(t_multiple, x, 'g-', 'LineWidth', 1.5);
title('Input Signal: cos(2π·100t) + cos(2π·500t)');
xlabel('Time t (seconds)');
ylabel('Amplitude');
grid on;
xlim([0, 0.02]);  % Show first 20ms

% Method 3: Manual FT for multiple frequency signal
fprintf('\n--- Method 3: Manual FT for Multiple Frequencies ---\n');

k = 0;
f_range = 0:1:800;        % Frequency range from 0 to 800 Hz
X_multiple = zeros(size(f_range));

for f = f_range
    k = k + 1;
    % Fourier Transform of our multiple frequency signal
    X_multiple(k) = trapz(t_multiple, x .* exp(-j*2*pi*f*t_multiple));
end

% Plot manual FT result
subplot(2,2,3);
plot(f_range, abs(X_multiple), 'm-', 'LineWidth', 2);
title('Manual Fourier Transform (0-800 Hz)');
xlabel('Frequency f (Hz)');
ylabel('|X(f)|');
grid on;
xlim([0, 800]);

% Mark expected frequency peaks
hold on;
plot([100, 100], [0, max(abs(X_multiple))], 'r--', 'LineWidth', 1);
plot([500, 500], [0, max(abs(X_multiple))], 'r--', 'LineWidth', 1);
legend('|X(f)|', '100 Hz', '500 Hz', 'Location', 'best');

% Method 4: FFT Analysis (Fast Fourier Transform)
fprintf('\n--- Method 4: FFT Analysis ---\n');

% Compute FFT
Xf = fft(x);                    % Fast Fourier Transform
f_fft = [0:N-1] * deltaf;       % Frequency vector for FFT

% Plot FFT result
subplot(2,2,4);
plot(f_fft, abs(Xf), 'k-', 'LineWidth', 2);
title('FFT Analysis (0 - 2500 Hz)');
xlabel('Frequency f (Hz)');
ylabel('|X(f)|');
grid on;
xlim([0, 1000]);  % Focus on relevant frequency range

% Mark expected peaks and aliases
hold on;
plot([100, 100], [0, max(abs(Xf))], 'r--', 'LineWidth', 1);
plot([500, 500], [0, max(abs(Xf))], 'r--', 'LineWidth', 1);

% Calculate and mark aliasing frequencies
fs = 1/ts;  % Sampling frequency = 5000 Hz
alias_100 = fs - 100;   % 4900 Hz
alias_500 = fs - 500;   % 4500 Hz

plot([alias_100, alias_100], [0, max(abs(Xf))], 'b--', 'LineWidth', 1);
plot([alias_500, alias_500], [0, max(abs(Xf))], 'b--', 'LineWidth', 1);

legend('FFT', '100 Hz', '500 Hz', '4900 Hz', '4500 Hz', 'Location', 'best');

sgtitle('Multiple Frequency Signals - Fourier Analysis Methods');

% Display Key Insights
fprintf('\n=== KEY INSIGHTS ===\n');
fprintf('1. Manual Integration (trapz): Direct implementation of FT formula\n');
fprintf('2. Multiple Frequencies: Signal contains 100 Hz + 500 Hz\n');
fprintf('3. FFT shows 4 peaks: 100 Hz, 500 Hz + aliases at %d Hz and %d Hz\n', alias_500, alias_100);
fprintf('4. Aliasing occurs due to periodic nature of DFT/FFT\n');
fprintf('5. Nyquist frequency: %.1f Hz (half of sampling frequency)\n', fs/2);

fprintf('\n=== TECHNICAL DETAILS ===\n');
fprintf('Sampling frequency (fs): %.1f Hz\n', fs);
fprintf('Nyquist frequency (fs/2): %.1f Hz\n', fs/2);
fprintf('Signal frequencies: 100 Hz and 500 Hz\n');
fprintf('Alias frequencies: %.1f Hz and %.1f Hz\n', alias_500, alias_100);
fprintf('All frequencies below Nyquist are valid, above are aliases\n');