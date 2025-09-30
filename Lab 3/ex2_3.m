% ex2_3.m
% Generates and plots a 10 Hz sine wave with amplitude 3

t = 0:0.02:0.6; % creates a sequence from 0 to 0.6 in steps of 0.02. 0.02 gives us 5 points per cycle (0.1/0.02 = 5)
y = 3*sin(2*pi*10*t); % sine wave formula
plot(t,y); % creates 2D plot


title('10 Hz Sine Wave'); % adds a  title on the top of the plot
xlabel('Time (s)'); % labels the x-axis as "Time" with units "(seconds)"
ylabel('Amplitude'); % labels the y-axis as "Amplitude"
grid on; % adds grid lines to the plot
