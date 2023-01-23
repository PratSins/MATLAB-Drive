clc 
clear 
close all
n1 = 0:5; x1= (-n1+10);
n2 = 6:8; x2 = (n2);
n = min(min(n1), min(n2)) : max(max(n1) ,max(n2));
x = cat(2,x1,x2);
stem(n, x, 'b', 'filled');
xlabel('n');
ylabel('\delta(n)')
title('\delta(n)');