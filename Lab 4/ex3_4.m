% ex3_4.m
% Plots exp(x) and log(x) on one graph

% Create 100 points between 0 and 3.5
x = linspace(0,3.5, 100);

ey = exp(x); % Exponential growth
ly = log(x); % Logarithmic growth

% Plot with different markers
plot(x,ey,'o');
hold on;
plot(x,ly,'*');
legend('exp', 'log');
xlabel('x');
ylabel('Function Value (exp(x) or log(x))');
title('Exponential vs Logarithmic Functions');
grid on;