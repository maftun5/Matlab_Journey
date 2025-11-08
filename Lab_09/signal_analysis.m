% Analyzing the effect of time-shifting on signal spectra

% First, define signals x and y
fs = 1000; % Sampling frequency
t = 0:1/fs:1-1/fs; % time vector from 0 to 1 second
N = 512; % Number of points in FFT

% Create an example signal x
f1 = 50;
f2 = 120;
x = 0.7*sin(2*pi*f1*t) + sin(2*pi*f2*t); % Multi component sinusoidal signals for clearer peaks

% Create time-shifted version y (shifted by 0.1 seconds)
shift_amount = 0.1; % Shift amount in seconds
shift_samples = round(shift_amount * fs);  % Convert samples
y = [zeros(1, shift_samples), x(1:end-shift_samples)];


f = linspace(-0.5, 0.5, N); % Frequency vector
X = fftshift(fft(x, N)); % FFT of the original signal
Y = fftshift(fft(y, N)); % FFT of the time-shifted signal

% Plot the signals in time domain
figure;
subplot(5, 1, 1);
plot(t, x, 'b-', 'LineWidth', 1.5);
title('Original Signal x(t) in Time Domain');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

subplot(5, 1, 2);
plot(t, y, 'r-', 'LineWidth', 1.5);
title('Time Shifted Signal y(t) in Time Domain');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

% Plot the magnitude spectra of both signals
subplot(5,1,5);
plot(f, abs(X), 'b-', 'LineWidth', 1.5); hold on;
plot(f, abs(Y), 'r--', 'LineWidth', 1.5);
title('Magnitude Spectra Comparison');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
legend('Original Signal', 'Time-Shifted Signal');
grid on;

% Display key information
fprintf('Signal Information:\n');
fprintf('Sampling frequency: %d Hz\n', fs);
fprintf('Signal length: %d samples\n', length(x));
fprintf('Time shift: %.3f seconds (%d samples)\n', shift_amount, shift_samples);
fprintf('FFT length: %d points\n', N);

% Demonstrate that magnitude spectra are identical (phase differs)
magnitude_difference = max(abs(abs(X) - abs(Y)));
fprintf('Maximum magnitude spectrum difference: %.2e\n', magnitude_difference);
fprintf('This shows time-shifting affects phase but not magnitude spectrum.\n');

% Plot the magnitude spectra of both signals
%figure;
subplot(5,1,3); plot(f, abs(X));
title('Original Signal Spectrum');
subplot(5,1,4); plot(f, abs(Y));
title('Time-Shifted Signal Spectrum');