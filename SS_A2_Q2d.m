%2d

n=-10:10;

x1=zeros(1,length(n));
x2=zeros(1,length(n));
x3=zeros(1,length(n));

for m=1:length(n)
    if n(m)>=0 && n(m)<=5
        x1(m)=10-n(m);
    end
end
for m=1:length(n)
    if n(m)>=6 && n(m)<=8
        x2(m)=n(m);
    end
end
for m=1:length(n)
    if n(m)>8 && n(m)<0
        x3(m)=0;
    end
end

x=x1+x2+x3;
y=fliplr(x);
xe=(x+y)/2;
xo=(x-y)/2;
subplot(3,1,1);
plot(n,x,'b');
xlabel('n in sec');
ylabel('x(n)');
title("Original Signal");
subplot(3,1,2);
plot(n,xe,'r');
xlabel('n in sec');
ylabel('x(n)');
title("Even component");
subplot(3,1,3);
plot(n,xo,'g');
xlabel('n in sec');
ylabel('x(n)');
title("Odd component");
grid on;