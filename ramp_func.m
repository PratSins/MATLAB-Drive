function [nn, xn] = ramp_func(n)
    nn = n;
    xn = [];
    for i = n
        if (i >= 0)
            xn = [xn i];
        else
            xn = [xn 0];
        end
    end
end