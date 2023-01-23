clc
clear
close all
t = 0:0.01:1;
xt = zeros(1,length(t));
K = input('Enter the value of K ');
for k = 1:K
    xt = xt + ((1/exp(-k)) * sin(2*pi*k*t));
end
plot(t,xt);
title("Assignment-1 Q-1");
xlabel("t in sec")
ylabel("x(t)")
grid on;
hold on;