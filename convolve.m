function cnv = convolve(a,b)
    L = length(a)+length(b)-1;
    cnv = zeros(1,L);
    a1=[a,zeros(1,L-length(a))]; 
    b1=[b,zeros(1,L-length(b))];
    for i=1:L
        c = 0;
        for j=1:i
           c = c + a1(j)*b1(i-j+1);
        end
          cnv(i) = c;
    end
end