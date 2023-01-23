clc
clear 
close all
n = [-1,-2,-3,0,1,2,3];
x = [2, 4, -3, 1, -5, 4,7];

[n11,x11] = sigshift(n,x,3);
[n12,x12] = sigshift(n,x,-2);
[yf1,nf1] = sigmult(x11,n11,x12,n12);

[n21,x21] = sigfold(n,x);
[n22,x22] = sigshift(n21,x21,1);
[n23,x23] = sigshift(n,x,1);
[yf2,nf2] = sigmult(x22,n22,x23,n23);

[yf,nf] = sigadd(yf1,nf1,yf2,nf2);

stem(nf,yf,'filled');
energy = sum(abs(yf).^2);
display(energy);