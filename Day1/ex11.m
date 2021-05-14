%subplot2

clc;
clear;
clear all;

a=linspace(0,6);
b=sin(a);
subplot(2,2,1);
plot(a,b);
grid on;
subplot(2,2,2);
plot(a,b,'g','Linewidth',4);
xlabel('x axis');
ylabel('y axis');
title('title');
gtext('place text anywhere');
c=cos(a);
hold on;
subplot(2,2,3);
plot(a,c);
legend('sin','cos');
subplot(2,2,4);
plot(a,c);

