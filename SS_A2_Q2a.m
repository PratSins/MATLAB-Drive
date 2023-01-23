n = -1:1:6;
xn = [1 0 1 2 3 4 5 6];
subplot(311);
stem(n,xn);
axis([min(n)-1 max(n)+1 0 7]);
subplot(312),odd(n,xn,0);
subplot(313),even(n,xn,0);