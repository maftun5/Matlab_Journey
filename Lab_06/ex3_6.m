% ex3_6.m
% This script visualizes three rectangular pulses

t =-1:1/500:1; % time vector
v1 = [zeros(1,250), ones(1,751)]; % first rectangular pulse
v2 = [zeros(1,751),ones(1,250)]; % second rectangualr pulse
V = v1-v2; % combine. it is difference between two pulses

figure, subplot(3,1,1)
stem(v1)
title('Pulse v1')

subplot(3,1,2)
stem(v2)
title('Pulse v2')

subplot(3,1,3)
stem(V)
title('v1 - v2 Pulse')

axis tight
title('Rectangular Pulses Plot')