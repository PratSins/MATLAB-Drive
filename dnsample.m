function [X_final,N_final] = dnsample(x,n,k)
    ind = 0;
    N_final = [];
    X_final = [];
    for i = n
        if (rem(ind, k) == 0)
            N_final = [N_final i];
            X_final = [X_final x(ind + 1)];
        end
        ind = ind + 1;
    end
end