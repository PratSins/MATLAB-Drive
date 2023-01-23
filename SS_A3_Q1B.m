clc
clear 
close all
n = [-1,-2,-3,0,1,2,3];
x = [2, 4, -3, 1, -5, 4,7];

[n11,x11] = scaling(n,x,2);
[n2,x12] = sigshift(n11,x11,4);
y1 = x12*4;

[n21,x21] = sigshift(n,x,5);
y2 = x21*5;
y3 = x*2;

[ys1,ns1] = sigadd(y1,n2,y2,n21);
[yf,nf] = sigadd(ys1,ns1,y3,n);

stem(nf,yf,'filled');
energy = sum(abs(yf).^2);
display(energy);