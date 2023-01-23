clc
clear
close all
t=-10:0.01:10;
%continuous exponential growing 
xt=exp(t);
subplot(4,1,1);
plot(t,xt);
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Continuous exponential growing');
%continuous exponential decaying
subplot(4,1,2);
xt1=exp(-t);
plot(t,xt1);
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Continuous exponential decaying');
%Discrete exponential growing 
t=-10:1:10;
xt=exp(t);
subplot(4,1,3);
stem(t,xt,'filled');
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Discrete exponential growing');
%Discrete exponential decaying
subplot(4,1,4);
xt1=exp(-t);
stem(t,xt1,'filled');
grid on;
xlabel('t in sec');
xlabel('t in sec');
ylabel('exponential function');
legend('Discrete exponential decaying');
