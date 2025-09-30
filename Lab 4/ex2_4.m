% ex2_4.m
 % % Shows how to create multiple figures with different plot types

 clf % Clear current figure
 x = 1:5;  % Not necessary
 y1 = [2 11 6 9 3];
 y2 = [4 5 8 6 2];
 % Figure 1: Bar Chart
 figure(1)
 bar(x,y1)
 title('Bar Chart - Figure 1');

 % Figure 2: Line plots with legend
 figure(2)
 plot(x,y1,'k')
 hold on
 plot(x,y2,'ko')
 grid on
 legend('y1','y2')
 axis([0 6 1 12])