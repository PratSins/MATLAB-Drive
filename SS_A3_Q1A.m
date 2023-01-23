clc
clear 
close all
n = [-1,-2,-3,0,1,2,3];
x = [2, 4, -3, 1, -5, 4,7];
[n1,x1] = sigshift(n,x,-3);
[n2,x2] = sigshift(n,x,4);
y1 = x1*2;y2 = x2*3;

[y3,n3] = sigadd(y1,n1,y2,n2);
[yf,nf] = sigsubt(y3,n3,x,n);
subplot(211),stem(n,x,'filled');
subplot(212),stem(nf,yf,'filled');
energy = sum(abs(yf).^2);
display(energy);