%%
%QUESTION 1A%
disp('-----Q1-A------');
n = 0:7; 
x = [4,3,2,1,-1,-2,-3,-4]; 
Xw=[]; k=1; w_indx=[]; Xph=[];
NDFT = 500;
for w = -pi:(2*pi/NDFT):pi;
tmp= sum(x.*exp(-1*sqrt(-1)*w*n)); 
Xw(k) = tmp; 
w_indx(k) =w; 
Xph(k) = atan2(imag(tmp), real(tmp)); 
k= k+1;
end
subplot(2,2,1); stem(n, x); title('x(n)'); xlabel('n');
subplot(2,2,2); plot(w_indx/pi,abs(Xw));grid
title('X(\omega)'); xlabel('\omega in \pi unit');
ylabel('|X(\omega)|');
subplot(2,2,3); plot(w_indx/pi,Xph);grid
title('\angle X(\omega)'); xlabel('\omega in \pi unit');

%%
%QUESTION 1B%
disp('-----Q1-B------');
n = -10:10;
x = ((0.6).^(abs(n))).*(heaviside(n+10)-heaviside(n));
Xw=[];
k=1; 
w_indx=[]; 
Xph=[];
NDFT = 500;
for w = -pi:(2*pi/NDFT):pi
tmp= sum(x.*exp(-1*sqrt(-1)*w*n));
Xw(k) = tmp;
w_indx(k) =w;
Xph(k) = atan2(imag(tmp), real(tmp));
k= k+1;
end
subplot(2,2,1); stem(n, x); title('x(n)'); xlabel('n');
subplot(2,2,3); plot(w_indx/pi,abs(Xw));grid
title('X(\omega)'); xlabel('\omega in \pi unit');
ylabel('|X(\omega)|');
subplot(2,2,4); plot(w_indx/pi,Xph);grid
title('\angle X(\omega)'); xlabel('\omega in \pi unit');

%%
%QUESTION 1C%
disp('-----Q1-C------');
n = -10:10;
x = ((-0.9).^n);
Xw=[];
k=1; 
w_indx=[]; 
Xph=[];
NDFT = 500;
for w = -pi:(2*pi/NDFT):pi
tmp= sum(x.*exp(-1*sqrt(-1)*w*n));
Xw(k) = tmp;
w_indx(k) =w;
Xph(k) = atan2(imag(tmp), real(tmp));
k= k+1;
end
subplot(2,2,1); stem(n, x); title('x(n)'); xlabel('n');
subplot(2,2,3); plot(w_indx/pi,abs(Xw));grid
title('X(\omega)'); xlabel('\omega in \pi unit');
ylabel('|X(\omega)|');
subplot(2,2,4); plot(w_indx/pi,Xph);grid
title('\angle X(\omega)'); xlabel('\omega in \pi unit');

%%
%QUESTION 2%
disp('-----Q2------');
t= -0.5: 0.005: 0.5;
xt = exp(-2*t).*heaviside(t); 
figure;
subplot(3,1,1);
plot(t, xt); title('x(t)'); xlabel('t in sec');
ylabel('Amplitude');
T = 0.01;
n = -20:1:20;
xn = exp(-2*n*T);
subplot(3,1,2);
stem(n*T, xn); title('x(nT)'); xlabel('nT (sec)');
ylabel('Amplitude');
Xw=[]; k=1; win=[]; Xph=[]; NDFT = 500;
for w = -pi:(pi/NDFT):pi
tmp= sum(xn.*exp(-1*sqrt(-1)*w*n));
Xw(k) = tmp;
win(k) =w; k= k+1;
end
W = win/T;
subplot(3,1,3);
plot(W,abs(Xw));grid
title('DTFT');
xlabel('Freq.');
ylabel('Magnitude');