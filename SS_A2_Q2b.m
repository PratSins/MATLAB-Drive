%Question 2(b)
n = 1:100;
xn = exp(0.1 * n);
subplot(311);
plot(n,xn,'k');
subplot(312),odd(n,xn,1);
subplot(313),even(n,xn,1);