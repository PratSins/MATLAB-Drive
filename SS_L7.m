clear all
close all
clc
%% Q1-A
syms t;
x1=cos(50*t);T1=pi/25;w1=50;
[a1,mag1,phase1]=FscMP(x1,t,w1,T1);
figure;
k=-10:1:10;
subplot(2,1,1);stem(k,mag1);title("Magnitude");
subplot(2,1,2);stem(k,phase1);title("Phase");
disp('*********Q1-A***********');
%% Q1-B
syms t;
x2=10+cos(200*t);T2=pi/100;w2=200;
[a2,mag2,phase2]=FscMP(x2,t,w2,T2);
figure;
k=-10:1:10;
subplot(2,1,1);stem(k,mag2);title("Magnitude");
subplot(2,1,2);stem(k,phase2);title("Phase");
disp('**********Q1-B**********');
%% Q1-C
syms t;
x3=((1/2)*(5-cos(3*pi*t)));T3=2/3;w3=3*pi;
[a3,mag3,phase3]=FscMP(x3,t,w3,T3);
figure;
k=-10:1:10;
subplot(2,1,1);stem(k,mag3);title("Magnitude");
subplot(2,1,2);stem(k,phase3);title("Phase");
disp('*********Q1-C***********');
%% Q1-D
t4=-0.5:0.01:0.5;
x4=zeros(1, length(t4));
x4(t4>=-0.25 & t4<=0.25)=2;
syms t4;
k4=-10:10;
d4=zeros(1, length(k4));
p4=1;
for l=-10:10
xn4a = (2*int(exp(sqrt(-1)*l*2*pi*t4), t4, -0.25, 0.25));
d4(p4)=vpa(xn4a);
phase3(p4)=atan2(imag(d4(p4)),real(d4(p4)));
p4=p4+1;
xn4 = vpa(xn4a)
end
figure;
subplot(2,1,1);stem(k4, d4);title("Magnitude");
subplot(2,1,2);stem(k4,phase3);title("Phase");
disp('********Q1-D************');


%% Q2-A
T1=pi/25;
xn1=zeros(1,21);
temp1=1;
for j=-10:1:10
    sum=0;
    temp=1;
    for k=-10:1:10
        sum = sum + a1(temp)*exp(sqrt(-1)*k*(2*pi/T1)*j);
        temp=temp+1;
    end
    xn1(temp1)=sum;
    temp1=temp1+1;
end
t=-10:1:10;
ori=cos(50*t);
figure
subplot(3,1,1)
plot(t,ori);
title("original");
subplot(3,1,2);
plot(t,xn1);
title("reconstruction");
subplot(3,1,3);
error=ori-xn1;
plot(t,error);
title("Error");
disp('*********Q2-A***********');
%% Q2-B
T2=pi/100;
xn2=zeros(1,21);
temp1=1;
for j=-10:1:10
    sum=0;
    temp=1;
    for k=-10:1:10
        sum = sum + a2(temp)*exp(sqrt(-1)*k*(2*pi/T2)*j);
        temp=temp+1;
    end
    xn2(temp1)=sum;
    temp1=temp1+1;
end
t=-10:1:10;
ori=10+cos(200*t);
figure
subplot(3,1,1);
plot(t,ori);
title("original");
subplot(3,1,2);
plot(t,xn2);
title("reconstruction");
subplot(3,1,3);
error=ori-xn2;
plot(t,error);
title("Error");
disp('*********Q2-B***********');
%% Q2-C
T3=2/3;
xn3=zeros(1,21);
temp1=1;
for j=-10:1:10
    sum=0;
    temp=1;
    for k=-10:1:10
        sum = sum + a3(temp)*exp(sqrt(-1)*k*(2*pi/T3)*j);
        temp=temp+1;
    end
    xn3(temp1)=sum;
    temp1=temp1+1;
end

t=-10:1:10;
ori=(1/2)*(5-cos(3*pi*t));
figure
subplot(3,1,1);
stem(t,ori);
title("original");
subplot(3,1,2);
plot(t,xn3);
title("reconstruction");
subplot(3,1,3);
error=ori-xn3;
plot(t,error);
title("Error");
disp('*********Q2-C***********');
%% Q2-D
t4=-0.5:0.01:0.5;
x4=zeros(1, length(t4));
x4(t4>=-0.25 & t4<=0.25)=2;
expr4=x4;
sum=0;
t4=-0.5:0.01:0.5;
x4;
figure;
subplot(3,1,1);
plot(t4, x4);
p1=1;
for t1=-0.5:0.01:0.5
    for p4=-10:10
        sum=sum+d4(p4+11)*exp(1j*p4*2*pi*t1);
    end
       d1(p1)=sum;
       p1=p1+1;
    sum=0;
end
subplot(3,1,2);
plot(t4, d1);
error4=x4-d1;
subplot(3,1,3);
plot(t4, error4);
disp('*********Q2-D***********');