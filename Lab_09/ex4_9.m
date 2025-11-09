% Exercise 4: Time-Shift Interaction

% Modified from provided code to allow user input
clear; 
close all; 
clc;

% Get time shift value from user
tt = input('Enter time shift value (positive or negative): ');
fprintf('You entered time shift value: %d\n', tt);

% Define the coordinates for the signals
xx1 = 0:10; yy1 = sin(xx1);      % Sine wave data for signal 1
xx2 = 0:10; yy2 = cos(xx2);      % Cosine wave data for signal 2  
xx3 = 0:10; yy3 = xx3.^2;        % Quadratic data for signal 3

% Cartesian coordinates for drawing a cross
tts1 = [0 0];                    % Vertical line X-coordinates
tts2 = [-1 2.5];                 % Vertical line Y-coordinates
tts3 = [(-5-tt) (5-tt)];         % Horizontal line X-coordinates (depends on tt)
tts4 = [0 0];                    % Horizontal line Y-coordinates

% Create figure with 4 subplots
figure;

% Subplot 1: Sine wave shifted by user input
subplot(2,2,1);
stem(xx1-tt, yy1, 'filled', 'b', 'LineWidth', 1.5);
title(sprintf('Sine Wave: Shifted by %d', tt));
xlabel('Time'); ylabel('sin(x)');
grid on;
xlim([-10, 15]);  % Adjust x-axis limits to see the shift

% Subplot 2: Cosine wave shifted by user input  
subplot(2,2,2);
stem(xx2-tt, yy2, 'filled', 'r', 'LineWidth', 1.5);
title(sprintf('Cosine Wave: Shifted by %d', tt));
xlabel('Time'); ylabel('cos(x)');
grid on;
xlim([-10, 15]);  % Adjust x-axis limits to see the shift

% Subplot 3: Quadratic function shifted by user input
subplot(2,2,3);
stem(xx3-tt, yy3, 'filled', 'g', 'LineWidth', 1.5);
title(sprintf('Quadratic: Shifted by %d', tt));
xlabel('Time'); ylabel('x^2');
grid on;
xlim([-10, 15]);  % Adjust x-axis limits to see the shift

% Subplot 4: Cross showing the shift amount
subplot(2,2,4);
plot([tts1 tts3], [tts2 tts4], 'k', 'LineWidth', 2);
title('Visualization of Time Shift');
xlabel('Time Axis'); ylabel('Amplitude');
grid on;
axis equal;
xlim([-8, 8]); ylim([-2, 3]);

% Display explanation based on shift value
fprintf('\n=== Explanation of Time Shift Effect ===\n');
if tt > 0
    fprintf('Positive shift (%d):\n', tt);
    fprintf('- Signals move to the RIGHT\n');
    fprintf('- This is a TIME DELAY\n');
    fprintf('- The signals appear LATER in time\n');
elseif tt < 0
    fprintf('Negative shift (%d):\n', tt);
    fprintf('- Signals move to the LEFT\n'); 
    fprintf('- This is a TIME ADVANCE\n');
    fprintf('- The signals appear EARLIER in time\n');
else
    fprintf('Zero shift:\n');
    fprintf('- No movement - signals stay in original position\n');
end