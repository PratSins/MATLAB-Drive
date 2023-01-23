function[xt,t] = inv_f_xt(xw,range_t)
k=1;
xt=[];
syms w
for t=-1*range_t:0.01:range_t
    xt(k) = (1/2*pi)*int(xw*exp(sqrt(-1)*w*t),w, -inf, inf); 
    k=k+1;
end
t=-1*range_t:0.01:range_t;
end