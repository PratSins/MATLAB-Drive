function [xo,n,num] = odd(n1,x1,num)
    n2 = -fliplr(n1);
    n = min(min(n1),min(n2)) : max(max(n1),max(n2));
    y1 = zeros(1,length(n));
    y1((n>=min(n1))&(n<=max(n1))) = x1();
    x = y1;
    xo = 0.5 * (x - fliplr(x));
    if num == 0
        stem(n,xo);
    elseif num == 1
        plot(n,xo)
    end  
end