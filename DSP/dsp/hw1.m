T=2; % total time period over which signal was sampled
fs=3000; % Sampling rate

t=0.0:1/fs:T;
ydata=sin(2*pi*70*t);
ynoise=sin(2*pi*60*t);
y=ydata+ynoise;
figure;
plot(t,y);
Y=fft(y);
y_f=fftshift(abs(Y));
f=linspace(-1*length(t),length(t),length(t))*fs/2/length(t);
figure;
plot(f,y_f);
Y2=ifft(Y);
hold on
figure;
plot(t,Y2);







