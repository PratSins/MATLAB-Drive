%% 1a
clc 
clear;
close all;
syms t;
k=sqrt(3);
f=(1/k)*(sin(sqrt(3)*t)+2*cos(sqrt(3)*t))*(exp(-t))*heaviside(t+1);
subplot(2,1,1);
fplot(f,[0,5]);
title('x(t)'); xlabel('t');
Xs=laplace(f);
subplot(2,1,2);
fplot(Xs);
title('x(s)'); xlabel('t');
display(Xs);
num=[0 2/k (2/k)+1];
den=[1 2 4];
z=roots(num); 
p=roots(den);
display(z);
display(p);

%% 1b
clc 
clear;
close all;
syms t;
f=0.5*(t*heaviside(t)-2*(t-2)*heaviside(t-2)+(t-4)*heaviside(t-4));
subplot(2,1,1);
fplot(f,[0,4],'b');
title('x(t)'); xlabel('t');
Xs=laplace(f);
subplot(2,1,2);
fplot(Xs,'r');
title('x(s)'); xlabel('t');
display(Xs);
num=[0 0 1];
den=[2 0 0];
z=roots(num); 
p=roots(den);
display(z);
display(p);

%% 1c
clc 
clear;
close all;
syms t;
f=(heaviside(t)-2*heaviside(t-1)+heaviside(t-3));
subplot(2,1,1);
fplot(f,[0,10],'r');
title('x(t)'); xlabel('t in sec');
subplot(2,1,2);
Xs=laplace(f);
fplot(Xs);
title('x(s)'); xlabel('t in sec');
display(Xs);
num=[0 1];
den=[1 0];
z=roots(num); 
p=roots(den);
display(z);
display(p);

%% 1d
clc 
clear;
close all;
syms t;
f=exp(-1*abs(t-1))*heaviside(t-1);
subplot(2,1,1);
fplot(f,[0,5],'b');
title('x(t)'); xlabel('t');
Xs=laplace(f);
subplot(2,1,2);
fplot(Xs,'r');
title('x(s)'); xlabel('t');
display(Xs);
den=[1 1];
p=roots(den);
display(p);

%% 2a
clc 
clear;
close all;
syms s
f=(5*s-3)/(s+1)*(s+2)*(s+3);
xt=ilaplace(f);
fplot(xt,'b');
display(xt);
num= [ 0 0 5 -3];
den = [1 6 11 6];
z=roots(num); 
p=roots(den);
display(z);
display(p);

%% 2b
clc 
clear;
close all;
syms s
f=1/(s)*(s+1)*(s+1)*(s+1)*(s+2);
xt=ilaplace(f);
display(xt);
num= [0 0 0 0 0 1];
den= [1 5 9 7 2 0];
z=roots(num); 
p=roots(den);
display(z);
display(p);

%% 2c
syms s
f = (1-(s*exp(-s)))/(s*(s+2));
xt=ilaplace(f);
%NO ZEROS 
den = [1 2 0];
p=roots(den); 
display(p);

%% 2d
clc 
clear;
close all;
syms s
f = ((s*s)-3)/(s+1)*(s+2); 
xt=ilaplace(f);
num= [1 0 -3];
den= [1 3 2];
z=roots(num); 
p=roots(den);
display(z);
display(p);