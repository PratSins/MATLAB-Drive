clc 
clear
close all
n=0:0.01:1;
N=length(n);
x=1 + cos(250*pi*n).*cos(250*pi*n) - sin(1000*pi*n); 
ta=0:0.001:1; 
y1=[];
for i=1:N-1
 y1=[y1 ones(1,10)*x(i)];
end
y1=[y1 x(end)];

subplot(4,1,1);
plot(n,x);

subplot(4,1,4);
plot(ta,y1);