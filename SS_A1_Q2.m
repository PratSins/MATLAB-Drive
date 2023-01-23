clc
clear
close all
t=0:0.01:10;
 
xt=exp(t);
subplot(2,2,1);
plot(t,xt);
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Continuous exponential growing');

subplot(2,2,2);
xt1=exp(-t);
plot(t,xt1);
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Continuous exponential decaying');

t=0:1:10;
xt2=exp(t);
subplot(2,2,3);
stem(t,xt2,'filled');
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Discrete exponential growing');

subplot(2,2,4);
xt3=exp(-t);
stem(t,xt3,'filled');
grid on;
xlabel('t in sec');
ylabel('exponential function');
legend('Discrete exponential decaying');
