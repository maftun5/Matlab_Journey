% ABCSales.m
% This script will read sales figures for divisions A and B from the file
% and plot it

load salesfigs.dat % load data from file 'salesfigs.dat'

% Extract data from row 1 and row 2 (Division A and Division B)
asales = salesfigs(1,:);
bsales = salesfigs(2,:);

plot(asales,'ko') % plot sales of row 1 using circle markers
hold on
plot(bsales,'k*') % row 2, with stars
xlabel('Quarter')
ylabel('Sales(billions)')
title('ABC Corporation Sales: 2013')
legend('Division A', 'Division B')