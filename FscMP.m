function [a,magnitude,phase] = FscMP(x,t,w,T)
    for k=-10:1:10
        b(k+11)=(1/T)*int(x*exp(-sqrt(-1)*k*w*t),t,0,T);
        a(k+11)=vpa(b(k+11));
        a_imaginary(k+11)= imag(a(k+11));
        a_real(k+11)=real(a(k+11));
        mag(k+11)=sqrt(a_real(k+11)^2 + a_imaginary(k+11)^2);
       phas(k+11)= atan2(a_imaginary(k+11),a_real(k+11));
    end
    phase=phas;
    magnitude=mag;
    a=a;
end