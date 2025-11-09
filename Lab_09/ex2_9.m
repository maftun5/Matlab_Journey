% Exercise 2: System Response to Time-Shifting 
% By Halimjonova Maftuna
%=====================================================================
% Analyze the system response to a time-shifted input using system y[n] = x[n]−0.5x[n−1]

clear;
close all;
clc;

% Define the system y[n]
n = 0:20;

% Create unit pulse(delta function) at n=0
x_original = zeros(size(n));
x_original(n == 0) = 1; % Set the unit pulse at n=0

% Create a shifted unit pulse (at n = 10)
x_shifted = zeros(size(n));
x_shifted(n==10) = 1;  % Delta function at n=10;

% Apply system to original input
y_orig = zeros(size(n));
for i =1:length(n)
    if i==1
        y_orig(i) = x_original(i);  % x[n-1] doesn't exist for n=0
    else
        y_orig(i) = x_original(i) - 0.5*x_original(i-1);
    end
end

% Apply system to shifted input  
y_shifted = zeros(size(n));
for i = 1:length(n)
    if i == 1
        y_shifted(i) = x_shifted(i);    % x[n-1] doesn't exist for n=0
    else
        y_shifted(i) = x_shifted(i) - 0.5*x_shifted(i-1);
    end
end

% Plot results
figure;
subplot(2,2,1);
stem(n, x_original, 'b', 'filled');
title('Input: Unit Pulse at n=0');
xlabel('n'); ylabel('x[n]'); grid on;

subplot(2,2,2);
stem(n, y_orig, 'r', 'filled');
title('Output for Original Input');
xlabel('n'); ylabel('y[n]'); grid on;

subplot(2,2,3);
stem(n, x_shifted, 'b', 'filled');
title('Input: Unit Pulse at n=10');
xlabel('n'); ylabel('x[n]'); grid on;

subplot(2,2,4);
stem(n, y_shifted, 'r', 'filled');
title('Output for Shifted Input');
xlabel('n'); ylabel('y[n]'); grid on;