clc
clear
close all
n1 = [-4 -3 -2 -1 0 1 2 3 4];
x1 = [0 1 1 3 4 5 6 7 8];
subplot(311);
stem(n1,x1,'k','filled');
title("Function x(n)");
axis([-5 5 0 10]);
n2 = -fliplr(n1);
n = min(min(n1),min(n2)) : max(max(n1),max(n2));
y1 = zeros(1,length(n));
y1((n>=min(n1))&(n<=max(n1))) = x1();
x = y1;
x2 = fliplr(x);
xodd = 0.5 * (x - fliplr(x));
subplot(312);
stem(n2,x2,'k','filled');
title("x(-n)");
axis([-5 5 0 10])
subplot(313);
stem(n,xodd,'r','filled');
title("Odd component of Function");
axis([-5 5 -7 7]);