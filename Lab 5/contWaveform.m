% understand the impact of amplitude, frequency 
 
% Basic square and sine waves
t = linspace(0, 3*pi); % from 0 to 2pi and then repeat
x = square(t);  % generate a square wave with period 2pi
plot(t/pi, x, '.-', t/pi, sin(t));
xlabel('t/\pi');
ylabel('Square and Sine Waves');
grid on;

% Square vs Higer Frequency Sine (2 cycles in the same time, while square
% wave completes one cycle
t = linspace(0, 3*pi); % from 0 to 2pi and then repeat
x = square(t);
figure, plot(t/pi, x, '.-', t/pi, sin(2*t));
xlabel('t/\pi');
ylabel('Square and Sine Waves');
grid on;

% Higher Frequency Square vs Basic Sine
t = linspace(0, 3*pi); % from 0 to 2pi and then repeat
x = square(t*4);
figure, plot(t/pi, x, '.-', t/pi, sin(t));
xlabel('t/\pi');
ylabel('Square and Sine Waves');
grid on;

% Amplified Square vs Sine
% Amplitude increased 4x (= oscillates between +4 and -4)
t = linspace(0, 3*pi); % from 0 to 2pi and then repeat
x = 4*square(t); % generate a square wave
figure, plot(t/pi, x, '.-', t/pi, sin(t));
xlabel('t/\pi');
ylabel('Square and Sine Waves');
grid on;

% Amplified High Frequency Square vs Phase Shifted Sine
t = linspace(0, 3*pi); % from 0 to 2pi and then repeat
x = 4*square(t*4); % generate a square wave
figure, plot(t/pi, x, '.-', t/pi, sin(2*t + 4)); % sin(w0t + phi). 4 radians shift 
xlabel('t/\pi');
ylabel('Square and Sine Waves');
grid on;
