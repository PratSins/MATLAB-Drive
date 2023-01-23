%% Q1
fc=150;
fm=15;
Fs = 1000;
t=0:1/Fs:1;
mt = 2*sin(2*pi*fm*t);
mt_anl = hilbert(mt);
mt_anlminus = conj(mt_anl);
usb = mt_anl.*(exp(sqrt(-1)*2*pi*fc*t)) + mt_anlminus.*(exp(-1*sqrt(-1)*2*pi*fc*t));
NFFT = 512;
fourmt = fftshift(fft(mt, NFFT));
F_mt_an = fftshift(fft(usb, NFFT)); %FT of [m^(t)]
figure; subplot(2,1,1); plot([-NFFT/2:1:(NFFT/2)-1]*(Fs/NFFT), abs(fourmt));
subplot(2,1,2); plot([-NFFT/2:1:(NFFT/2)-1]*(Fs/NFFT), abs(F_mt_an));
title('Fourier-transform '); xlabel('Frequency');

%% Q2-a
fm=10 ; 
Fs = 80; 
t=0:1/Fs:1; 
mt = cos(2*pi*fm*t);
mt_anl = hilbert(mt);
mt_ht = imag(hilbert(mt)); 
NFFT = 512;
F_mt_an = fftshift(fft(mt_ht, NFFT)); 
figure; subplot(2,1,1); plot(t, mt);
title('m(t) signal'); xlabel('t');
subplot(2,1,2); plot((-NFFT/2:1:(NFFT/2)-1)*(Fs/NFFT), abs(F_mt_an));
title('Fourier-transform of m\^(t)'); xlabel('Frequency');

%% Q2-b
fm=10 ; 
Fs = 80;
t=0:1/Fs:1;
mt = sin(2*pi*fm*t);
mt_anl = hilbert(mt);
mt_ht = imag(hilbert(mt)); 
NFFT = 512;
F_mt_an = fftshift(fft(mt_ht, NFFT));
figure; subplot(2,1,1); plot(t, mt);
title('m(t) signal'); xlabel('t');
subplot(2,1,2); plot((-NFFT/2:1:(NFFT/2)-1)*(Fs/NFFT), abs(F_mt_an));
title('Fourier-transform of m\^(t)'); xlabel('Frequency');

%% Q2-c
fm=10 ; 
Fs = 800;
t=0:1/Fs:1;
mt = 5*cos(60*pi*t)+sin(6*100*pi*t);
mt_anl = hilbert(mt);
mt_ht = imag(hilbert(mt)); 
NFFT = 512;
F_mt_an = fftshift(fft(mt_ht, NFFT)); %FT of [m^(t)]
figure; subplot(2,1,1); plot(t, mt);
title('m(t) signal'); xlabel('t');
subplot(2,1,2); plot((-NFFT/2:1:(NFFT/2)-1)*(Fs/NFFT), abs(F_mt_an));
title('Fourier-transform of m\^(t)'); xlabel('Frequency');
