% unit step function
Unit_amplitude = [zeros(1,50), ones(1, 50)]
figure, stem(Unit_amplitude);
title("unit amplitude step function");

% ramp function
ramp = 0:0.01:10;
figure, stem(ramp);
title("Ramp function");

% 1000 samples show interval of one second. gap of 2 millisecond
t = -1:1/500:1;
u1 = [zeros(1, 250), ones(1, 751)];
u2 = [zeros(1, 751), ones(1, 250)];
U = u1-u2;
figure, subplot(3, 1, 1);   % 3 rows, 1 column, and first plot(window for plotting)
stem(u1);
subplot(3, 1, 2);
stem(u2);
subplot(3,1, 3);
stem(U);
axis tight
title('Rectangualar pulses');
