 %%
 
x= [2, -4, 5, 3, -1, -2, 6]; 
nx= [-3, -2 ,-1, 0 ,1, 2, 3] ;
h = [1, -1, 1, -1, 1] ;
hn=[-1, 0, 1, 2, 3];

y = convolve(x,h);
n = min(nx)+min(hn) : max(nx)+max(hn);

stem(n,y);
%%
clc
clear
[x1, xn1] = step_func(-1, -5, 5);
[x2, xn2] = step_func(4, -5, 5);
x = x1 -x2;
xn = xn1;
for i = xn1
    x(xn1 == i) = x(xn1 == i)*((1/4)^-i);
end

[h1, hn1] = step_func(0, -5, 5);
[h2, hn2] = step_func(5, -5, 5);

h = h1 - h2;
hn = hn1;

y = convolve(x, h);
n = min(xn)+min(hn) : max(xn)+max(hn);

stem(n,y);

%%
clc
clear
[x1, xn1] = step_func(0, -8, 8);
[x2, xn2] = step_func(6, -8, 8);
[x, n1] = sigadd(x1, xn1 , -1*x2, xn2);
n1 = xn1;
for i = xn1
    x(xn1 == i) = x(xn1 == i)*(i/4);
end

[h1, hn1] = step_func(-2, -5, 5);
[h2, hn2] = step_func(3, -5, 5);
[h, n2] = sigadd(h1, hn1, -1*h2, hn2);
h = 2*h;
n2 = hn1;

y = convolve(x, h);
n = min(n1)+min(n2) : max(n1)+max(n2);

stem(n,y);


