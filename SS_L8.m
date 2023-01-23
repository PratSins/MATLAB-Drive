clc; clear all; close all;
%q1a
syms t;
a=2;
x= exp(-abs(t)).*sin(10*t); %expression
figure; 
subplot(2,2,1);
y= exp(-abs(t)).*sin(10*t);
ezplot(y, [-5, 5]); grid on; % original time-domain signal

k=1; mag=[]; phase=[]; omega=[];
for f= -2:0.01:2
xw = int(x.*exp(-sqrt(-1)*2*pi*f*t), t, -inf, inf);%Fourier trans.
mag(k)=sqrt( (real(xw))^2 + (imag(xw))^2 );%magnitude
phase(k) = atan2(imag(xw),real(xw));%phase
omega(k)= 2*pi*f;
k=k+1;
end
subplot(2,2,3);
plot(omega, mag, 'k'); % magnitude plot
title('X(\omega)'); xlabel('\omega'); grid on;
subplot(2,2,4);
plot(omega, phase, 'k'); % magnitude plot
title('\angle X(\omega)'); xlabel('\omega');
grid on;
%%
%q1b
syms t;
x=(heaviside(t+2)-heaviside(t-2)).*((1/2).*(((t+2)*heaviside(t+2))-(2*t*heaviside(t))+((t-2)*heaviside(t-2)))); %expression
figure; subplot(2,2,1);
y=(heaviside(t+2)-heaviside(t-2)).*(1/2).*(((t+2)*heaviside(t+2))-(2*t*heaviside(t))+((t-2)*heaviside(t-2)));
ezplot(y, [-5, 5]); grid on; % original time-domain signal

k=1; mag=[]; phase=[]; omega=[];
for f= -2:0.01:2
xw = int(x.*exp(-sqrt(-1)*2*pi*f*t),t,-99999,99999);%Fourier trans.
mag(k)=sqrt( (real(xw))^2 + (imag(xw))^2 );%magnitude
phase(k) = atan2(imag(xw),real(xw));%phase
omega(k)= 2*pi*f;
k=k+1;
end
subplot(2,2,3);
plot(omega, mag, 'k'); % magnitude plot
title('X(\omega)'); xlabel('\omega'); grid on;
subplot(2,2,4);
plot(omega, phase, 'k'); % magnitude plot
title('\angle X(\omega)'); xlabel('\omega');
grid on;
%%
%q1c
syms t;
x=t+1; %expression
figure; subplot(2,2,1);
y=piecewise(t<=-1,0,t>=-1 & t<=1,t+1,t>=1,2);
fplot(y, [-5, 5]); grid on; % original time-domain signal

k=1; mag=[]; phase=[]; omega=[];
for f= -2:0.01:2
xw = int(x.*exp(-sqrt(-1)*2*pi*f*t),t,-1,1)+int(2.*exp(-sqrt(-1)*2*pi*f*t),t,-1,1);%Fourier trans.
mag(k)=sqrt( (real(xw))^2 + (imag(xw))^2 );%magnitude
phase(k) = atan2(imag(xw),real(xw));%phase
omega(k)= 2*pi*f;
k=k+1;
end
subplot(2,2,3);
plot(omega, mag, 'k'); % magnitude plot
title('X(\omega)'); xlabel('\omega'); grid on;
subplot(2,2,4);
plot(omega, phase, 'k'); % magnitude plot
title('\angle X(\omega)'); xlabel('\omega');
grid on;
%%
%q1d
syms t;
a=2;
x=(heaviside(t+2)-heaviside(t-2)).*heaviside(-t); %expression
figure; subplot(2,2,1);
y=(heaviside(t+2)-heaviside(t-2)).*heaviside(-t);
ezplot(y, [-5, 5]); grid on; % original time-domain signal

k=1; mag=[]; phase=[]; omega=[];
for f= -2:0.01:2
xw = int(x.*exp(-sqrt(-1)*2*pi*f*t), t, -inf, inf);%Fourier trans.
mag(k)=sqrt( (real(xw))^2 + (imag(xw))^2 );%magnitude
phase(k) = atan2(imag(xw),real(xw));%phase
omega(k)= 2*pi*f;
k=k+1;
end
subplot(2,2,3);
plot(omega, mag, 'k'); % magnitude plot
title('X(\omega)'); xlabel('\omega'); grid on;
subplot(2,2,4);
plot(omega, phase, 'k'); % magnitude plot
title('\angle X(\omega)'); xlabel('\omega');
grid on;

%%
%q1e
syms t;
d=2
x=(heaviside(t+d)-heaviside(t-d)).*((1/2).*(((t+d)*heaviside(t+d))-(2*t*heaviside(t))+((t-d)*heaviside(t-d)))); %expression
figure; subplot(2,2,1);
y=(heaviside(t+d)-heaviside(t-d)).*(1/2).*(((t+d)*heaviside(t+d))-(2*t*heaviside(t))+((t-d)*heaviside(t-d)));
ezplot(y, [-5, 5]); grid on; % original time-domain signal

k=1; mag=[]; phase=[]; omega=[];
for f= -2:0.01:2
xw = int(x.*exp(-sqrt(-1)*2*pi*f*t),t,-99999,99999);%Fourier trans.
mag(k)=sqrt( (real(xw))^2 + (imag(xw))^2 );%magnitude
phase(k) = atan2(imag(xw),real(xw));%phase
omega(k)= 2*pi*f;
k=k+1;
end
subplot(2,2,3);
plot(omega, mag, 'k'); % magnitude plot
title('X(\omega)'); xlabel('\omega'); grid on;
subplot(2,2,4);
plot(omega, phase, 'k'); % magnitude plot
title('\angle X(\omega)'); xlabel('\omega');
grid on;
%%
% Question 2a
syms w 
a = 2;
xw = 1/(a+sqrt(-1)*w)^2;
[xt,t] = inv_f_xt(xw,2);
figure
plot(t,xt,'r');
xlabel('t');
ylabel('x(t)');
title('x(t)');
axis padded;
% Question 2b
syms w 
xw = 1/(2-w^2 + sqrt(-1)*3*w);
[xt,t] = inv_f_xt(xw,2);
figure
plot(t,xt,'r');
xlabel('t');
ylabel('x(t)');
title('x(t)');
axis padded;