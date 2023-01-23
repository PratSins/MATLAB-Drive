N = -4:4;
X = [-4 -2 -5 4 2 5 6 9 10];
[X_final,N_final] = dnsample(X,N,2);
subplot(2,1,1)
stem(N,X)
title('Original Signal')
subplot(2,1,2)
stem(N_final,X_final)
title('Down-sampled Signal by Factor of 2')