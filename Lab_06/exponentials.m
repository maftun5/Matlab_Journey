% Growing exponential signal
X = 0:0.001:1;  % continuous range of x values
Y = exp(X/2);
plot(X,Y,'o')

% The continuous decaying exponential signal
hold on
a = 6;
Z = exp(-a*X);
plot(X,Z ,'*');

legend('Growing exponentials signal','Decaying exponentials signal')
xlabel('X')
ylabel('Amplitude')
title('The growing and decaying exponentials')


% Different exponentials with new parameters
B = 1;
a = 5;
timing = 0:0.001:1;
x = B*exp(a*timing);
plot(timing, x);

B = 5;
a = 6;
timing = 0:0.001:1;
x = B*exp(-a*timing);
plot(timing, x);
