% Ramp&Step.m
% This script visualizes ramp funcions and mergers them with unit-amplitude
% step function

t = 0:0.01:10; % time vector
ramp = t;  % ramp function
step = ones(1, length(t));  % step functions

merged = [ramp, step];

% Plotting
figure

subplot(3,1,1)
stem(t, ramp)
title('Ramp Function')
xlabel('Time')
ylabel('Amplitude')

subplot(3,1,2)
stem(t, step)
title('Unit Step Function')
xlabel('Time')
ylabel('Amplitude')

subplot(3,1,3)
stem(merged)
title('Merged Signal (Ramp + Step)')
xlabel('Sample Index')
ylabel('Amplitude')

axis tight