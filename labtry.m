clc 
clear
close all

f = 1000;
T = 1/f; 
t = 0:0.01*T:2*T;

x = 1 + cos(250*pi*t).*cos(250*pi*t) - sin(1000*pi*t);
subplot(2,2,1);
plot(t,x); grid on;
title('Continuous signal');
xlabel('t');
ylabel('x(t)');

%Oversampling Condition:
fs1 = 10*f; % Oversampling (fs > 2f)
n1 = 0:1/fs1:2*T; 
x1 = 1 + cos(250*pi*n1).*cos(250*pi*n1) - sin(1000*pi*n1); 
subplot(2,2,2);
stem(n1,x1);
hold on;
plot(n1,x1,'r');
hold off;
title('Oversampling Condition : fs = 10f');
xlabel('n');
ylabel('x(n)');

% Right Sampling Condition:
fs2 = 2*f; % Nyquist Rate Sampling (fs = 2f)
n2 = 0:1/fs2:2*T; % Time scale (nTs)
x2 = 1 + cos(250*pi*n2).*cos(250*pi*n2) - sin(1000*pi*n2);
subplot(2,2,3);
stem(n2,x2);
hold on;
plot(n2,x2,'r');
hold off;
title('Sampling at Nyquist Frequency : fs = 2f');
xlabel('n');
ylabel('x(n)');

% Under Sampling Condition:
fs3 = 1.5*f; % Undersampling (fs < 2f)
n3 = 0:1/fs3:2*T; % Time scale (nTs)
x3 = 1 + cos(250*pi*n3).*cos(250*pi*n3) - sin(1000*pi*n3);
subplot(2,2,4);
stem(n3,x3);
hold on;
plot(n3,x3,'r');
hold off;
title('Undersampling Condition : fs = 1.5 f');
xlabel('n');
ylabel('x(n)');