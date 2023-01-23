function [x,n] = step_func(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
n = [n1:n2]; x = [(n-n0) >= 0];