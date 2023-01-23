function [y,n] = sigfold(x,n)
    % Implements y(n) = x(-n)
    y = fliplr(x);
    n = -fliplr(n);
end