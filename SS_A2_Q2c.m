%Question 2(c)
n = -20:20;
xn = cos((0.2*pi*n) + (pi/4));
subplot(311);
plot(n,xn);
subplot(312),odd(n,xn,1);
subplot(313),even(n,xn,1);