clc;
clear;
close all;
[x,fs] = audioread('LDC93S1.wav');
len = length(x);
c = fs*0.02;
y = len/c;
e = zeros(1,length(y));
p = zeros(1,length(y));
q = 1;
for i = 1:c:c*floor(y)
    t = x(i:i+c-1);
    e(q) = sum(abs(t).^2); 
    p(q) = e(q)/c;
    q = q+1;
end 
subplot(3,1,1);
plot(x);
title('Audio File plot');
grid on;
subplot(3,1,2);
stem(e,'r','filled');
title(' Energy Signal Plot');
grid on;
subplot(3,1,3);
stem(p,'b','filled');
title(' Power Signal Plot');
grid on;