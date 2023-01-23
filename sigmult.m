function[y,n] = sigmult(x1,n1,x2,n2)
    n = min(min(n1), min(n2)) : max(max(n1) ,max(n2)); 
    y1 = zeros(1,length(n));
    y2 = zeros(1,length(n));
    
    % add elements of x1 to y1 in domain of n1
    y1((n>=min(n1))&(n<=max(n1))) = x1();
    
    % add elements of x2 to y2 in range of n2
    y2((n>=min(n2))&(n<=max(n2))) = x2();
    
    y = y1 .* y2; %multiplication
end 