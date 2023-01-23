function [y,n] = sigadd2(x1,n1,x2,n2)
n = min(min(n1),min(n2)): max(max(n1),max(n2));
y1 = zeros(1,length(n));
nm = n1(1) - n(1); 
nn = 1:length(n1);
y1= zeros(1, length(n));
y1(nn+nm) = x1;
nm = n2(1) - n(1);
nn = 1:length(n2);
y2 = zeros(1, length(n));
y2(nn+nm) = x2;
y = y1 + y2;
end