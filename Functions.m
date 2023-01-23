%%
function [x,n] = stepseq(n0,n1,n2)
    n = [n1:n2]; x = [(n-n0) >= 0];
end

%%
function [y,n ] = ramp(n)
    y=0:n;
    n=0:n;
end

%%
function [xn, yn] = func_shift(x, y, k)
   xn = x - k;
   yn = y;
end