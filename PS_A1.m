%% Poisson Distribution PDF
x1 = 0:15; 
y1 = poisspdf(x1,4); 
x2 = 0:10; 
y2 = poisspdf(x2,8); 
x3 = 0:5; 
y3 = poisspdf(x3,1); 
x4 = 0:20; 
y4 = poisspdf(x4,10); 
x5 = 0:30; 
y5 = poisspdf(x5,15); 
subplot(1,1,1) 
plot(x1,y1,'s-', ...
 x2,y2,'o-', ...
 x3,y3,'d-', ...
 x4,y4,'^-',...
 x5,y5,'--'); 
legend({'r = Param 1' 'r = Param 2' 'r = Param 3' 'r = Param 4' 'r = Param 5'}) 
title('Poisson Distribution PDF') 
%% Poisson Distribution CDF
x1 = 0:15; 
y1 = poisscdf(x1,4); 
x2 = 0:10; 
y2 = poisscdf(x2,8); 
x3 = 0:5; 
y3 = poisscdf(x3,1); 
x4 = 0:20; 
y4 = poisscdf(x4,10); 
x5 = 0:30; 
y5 = poisscdf(x5,15); 
subplot(5,1,1) 
stairs(x1,y1) 
title('Poisson Distribution CDF - Parameter - 1') 
subplot(5,1,2) 
stairs(x2,y2) 
title('Poisson Distribution CDF - Parameter - 2') 
subplot(5,1,3) 
stairs(x3,y3) 
title('Poisson Distribution CDF - Parameter - 3') 
subplot(5,1,4) 
stairs(x4,y4) 
title('Poisson Distribution CDF - Parameter - 4') 
subplot(5,1,5) 
stairs(x5,y5) 
title('Poisson Distribution CDF - Parameter - 5') 
%% Normal Distribution CDF
pd = makedist('Normal') 
x1 = -3:.1:3; 
x2 = 0:.5:3; 
x3 = 0:0.8:5; 
x4 = -5:1:10; 
x5 = -2:1.5:10; 
cdf_x1 = cdf(pd,x1)

cdf_x2 = cdf(pd,x2) 
cdf_x3 = cdf(pd,x3) 
cdf_x4 = cdf(pd,x4) 
cdf_x5 = cdf(pd,x5) 
subplot(5,1,1) 
plot(x1,cdf_x1) 
title('Normal Distribution CDF - Parameter - 1') 
subplot(5,1,2) 
plot(x2,cdf_x2) 
title('Normal Distribution CDF - Parameter - 2') 
subplot(5,1,3) 
plot(x3,cdf_x3) 
title('Normal Distribution CDF - Parameter - 3') 
subplot(5,1,4) 
plot(x4,cdf_x4) 
title('Normal Distribution CDF - Parameter - 4') 
subplot(5,1,5) 
plot(x5,cdf_x5) 
title('Normal Distribution CDF - Parameter - 5') 
%% Normal Distribution PDF
mu_1 = 1; 
sigma_1 = 5; 
x1 = -3:.1:3; 
y_norm_1 = normpdf(x1,mu_1,sigma_1); 
mu_2 = 2; 
sigma_2 = 10; 
x2 = 0:.5:3; 
y_norm_2 = normpdf(x2,mu_2,sigma_2); 
mu_3 = 1; 
sigma_3 = 5; 
x3 = 0:0.8:5; 
y_norm_3 = normpdf(x3,mu_3,sigma_3); 
mu_4 = 1; 
sigma_4 = 5; 
x4 = -5:1:10; 
y_norm_4 = normpdf(x4,mu_4,sigma_4); 
mu_5 = 1; 
sigma_5 = 5; 
x5 = -2:1.5:10; 
y_norm_5 = normpdf(x5,mu_5,sigma_5); 
subplot(5,1,1) 
plot(x1,y_norm_1) 
title('Normal Distribution PDF - Parameter - 1') 
subplot(5,1,2) 
plot(x2,y_norm_2) 
title('Normal Distribution PDF - Parameter - 2') 
subplot(5,1,3) 
plot(x3,y_norm_3) 
title('Normal Distribution PDF - Parameter - 3') 
subplot(5,1,4) 
plot(x4,y_norm_4) 
title('Normal Distribution PDF - Parameter - 4') 
subplot(5,1,5) 
plot(x5,y_norm_5)