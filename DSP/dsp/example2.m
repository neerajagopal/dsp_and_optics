%Example #1

close all; clear all;  

T=2; % total time period over which signal was sampled
fs=3000; % Sampling rate

t=0.0:1/fs:T;
y=sin(2*pi*5*t);
n=randn(1,length(t));
y1=y+n;

subplot(3,1,1), plot(t,y1);
xlabel('time (seconds)','FontSize',16);

y1f=fft(y1);

y1m=fftshift(abs(y1f));


f=linspace(-1*length(t),length(t),length(t))*fs/2/length(t);

subplot(3,1,2),plot(f,y1m);
xlabel('frequency (Hz)','FontSize',16);

Y1=ifft(y1f);
hold on;
subplot(3,1,3), plot(t,Y1,'r');