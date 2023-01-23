%x(n) = 3r(n − 2) − 6r(n + 1) + 3r( n) − 4u(n − 4)
clc 
clear 
close all

n=6;
[y,n]=ramp_func(n);
[y1,n1] = sigshift(y,n,2);

n=9;
[y,n ] = ramp_func(n);
[y2,n2]=sigshift(y,n,-1);

p=4;
m=-5;
l=0;
[x,q] = step_func(l,m,p);
[y3,n3]=sigshift(x,q,4);

n=8;
[y,n ] = ramp_func(n);
[y4,n4]=sigadd(3*y1,n1,-6*y2,n2);
[y5,n5]=sigadd(y4,n4,-4*y3,n3);
[y6,n6]=sigadd(y5,n5,3*y,n);
stem(n6,y6,'k','filled');
xlabel('n');
ylabel('x(n)');
title('final signal');