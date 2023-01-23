function [nn, xn] = func_impulse(n)
    nn = -n: n;
    xn = [];
    for i = nn
        if (i == 0)
            xn = [xn 1];
        else
            xn = [xn 0];
        end
    end
end