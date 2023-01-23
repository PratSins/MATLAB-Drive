clc
clear 
close all
n = [-1,-2,-3,0,1,2,3];
x = [2, 4, -3, 1, -5, 4,7];

y1 = (2*exp(0.5*n)) .* x;

y2 = cos(0.2*pi*n);
[n2,x2] = sigshift(n,x,2);
[yf1,nf1] =  sigmult(y2,n,x2,n2);

[yf,nf] = sigadd(y1,n,yf1,nf1);
stem(nf,yf,'filled');
energy = sum(abs(yf).^2);
display(energy);