% Exercise 1: Time-shifting and Signal Characteristics
% Halimjonova Maftuna
%=======================================================================
% Time-shifting operations on discrete signal x[n] = sin(2πfn) and plotting

clear;
close all;
clc;

% Parameters
n = 0:100;  
f = 0.01;
x = sin(2*pi*f*n);

% Time Shifts
shift1 = 10;
shift2 = -10;
shift3 = 30;

% Create shifted signals
x_shift1 = sin(2*pi*f*(n-shift1));
x_shift2 = sin(2*pi*f*(n-shift2));
x_shift3 = sin(2*pi*f*(n-shift3));

% Plot
figure;
plot(n, x, 'b.-', 'LineWidth', 2);
hold on;
plot(n, x_shift1, 'r-', 'LineWidth', 1.5);
plot(n, x_shift2, 'g--', 'LineWidth', 1.5);
plot(n, x_shift3, 'm--', 'LineWidth', 1.5);
hold off;

title('Exercise 1: Time-Shifting of Sine Wave');
xlabel('Sample Index n');
ylabel('Amplitude');
legend('Original', 'Shift +10', 'Shift -10', 'Shift +30', 'Location', 'best');
grid on;

