clc
clear
close all
t = 0:0.01:2*pi;
n =  0:1:2*pi;
%Continous sin
T=10/3;
f=1/T;
theta = pi/3;
A = 1;
y1 = A * sin(2*pi*f*t + theta);
plot(t,y1);
xlabel('t');
ylabel('y(t)');
hold on;
grid on;
%Discrete cos
theta1 = pi * (5/12);
T1 = 5;
f1 = 1/T1;
y2 = A * cos(2*pi* f1 *n + theta1);
stem(n,y2,'filled');
grid on;
legend('Continous sin','Discrete cos');

