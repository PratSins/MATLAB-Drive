r=input('Enter the cell radius');
a=input('Enter the x coordinate ');
b=input('Enter the y coordinate ');

for j = -4:1:4
    for i = -3:1:3
        t=0:pi/3:2*pi;
        x=a+(i*r*sqrt(3));
        y=b+(j*3*r);
        x1=x+r*sin(t);
        y1=y+r*cos(t);
        plot(x1,y1,'k')
        axis square
        hold on;
    end
end
for j = -4:1:4
    for i = -3:1:3
        t=0:pi/3:2*pi;
        x3=(a+(r*sqrt(3)/2))+(i*r*sqrt(3));
        y3=(b+(3/2*r))+(j*3*r);
        x4=x3+r*sin(t);
        y4=y3+r*cos(t);
        plot(x4,y4,'k')
        axis square
        hold on;
    end
end
%Now comes the coloring B=(r*sqrt(3)/2) A=r
t=0:pi/3:2*pi;
x=a+r*sin(t);
y=b+r*cos(t);
fill(x,y,'c')
axis square
hold on
t=0:pi/3:2*pi;
x=a+r*sin(t)+(r*sqrt(3)/2);
y=b+r*cos(t)+(9/2)*r;
fill(x,y,'c')
axis square
hold on
t=0:pi/3:2*pi;
x=a+r*sin(t)-(4*r*sqrt(3)/2);
y=b+r*cos(t)+(3)*r;
fill(x,y,'c')
axis square
hold on
t=0:pi/3:2*pi;
x=a+r*sin(t)-(5*r*sqrt(3)/2);
y=b+r*cos(t)-(3/2)*r;
fill(x,y,'c')
axis square
hold on
t=0:pi/3:2*pi;
x=a+r*sin(t)-(r*sqrt(3)/2);
y=b+r*cos(t)-(9/2)*r;
fill(x,y,'c')
axis square
hold on
t=0:pi/3:2*pi;
x=a+r*sin(t)+(4*r*sqrt(3)/2);
y=b+r*cos(t)-(3)*r;
fill(x,y,'c')
axis square
hold on
t=0:pi/3:2*pi;
x=a+r*sin(t)+(5*r*sqrt(3)/2);
y=b+r*cos(t)+(3/2)*r;
fill(x,y,'c')
axis square
hold on

