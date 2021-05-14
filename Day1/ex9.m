%plot graph

clc;
clear;
clear all;

a=linspace(0,6);
b=sin(a);
plot(a,b);
grid on;
figure;
plot(a,b,'g','Linewidth',4);
xlabel('x axis');
ylabel('y axis');
title('title');
gtext('place text anywhere');
c=cos(a);
hold on;
plot(a,c);
legend('sin','cos');
