% squareWave.m

A = 1;   % amplitude set to 1
w0 = 10*pi; % angular frequency
rho = 50;  % duty cycle set to 50%
t = 0:.001:1;  % time from 0 to 1 sec
sq = A * square(w0*t, rho);  %  square wave
plot(t, sq);
axis([0 1 -1.1 1.1]) % x and y axes range
