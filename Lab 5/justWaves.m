% Growing exponential
B = 1;
a = 5;
t = 0:0.001:1;
x = B *exp(a*t);
plot(t, x);

% Decaying exponential
B = 5;
a = 6;
t = 0:0.001:1;
x = B*exp(-a*t);
figure, plot(t, x);


% plot y = e^(x/2) for x values in range -2 to 10
X = -2:0.5:10;
Y = exp(X/2);
figure, plot(X,Y);


% plot y = e^(x/2) for x values in range -2 to 10 but very smooth
X = -2:0.001:10;
Y = exp(X/2);
figure, plot(X,Y);


% discrete representation of exponential
B = 1;
r = 0.85;
n = -10:10;
x = B * r.^n;
figure, stem(n, x);



% sine and cosine waves
x = -pi:0.01:pi;
figure, plot(x, cos(x));
% plot(x/pi, cos(x));
grid on;
title('Cosine wave');

x = -pi:0.01:pi;
figure, plot(x, sin(x));
grid on;
title('Sine wave');



% sind - result in degrees


% Exponentially damped sinusoidal signals
A = 60;
W0 = 20*pi;
phi = 0;
a = 6;
t = 0:0.001:1;
expsine = A * sin(W0 * t + phi).*exp(-a*t);  % .*exp(a*t)  - for growing
figure, plot(t, expsine);
title('Exponentially damped sinusoidal wave')