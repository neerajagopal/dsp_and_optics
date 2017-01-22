%Example #1

close all; clear all;  

T=10; % total time period over which signal was sampled
fs=200; % Sampling rate

t=0.0:1/fs:T;
y1=sin(2*pi*5*t);
y2=sin(2*pi*6*t);
y3=sin(2*pi*15*t);
y4=sin(2*pi*20*t);
y5=sin(2*pi*25*t);

y=y1+y2;%y3+y4+y5;

subplot(2,1,1), plot(t,y);
xlabel('time (seconds)','FontSize',16);

y1f=fft(y1);
yf=fft(y);
y1m=fftshift(abs(y1f));
yfm=fftshift(abs(yf));

f=linspace((-1*(max(size(t))-1))/2,(max(size(t))-1)/2,max(size(t))-1)*fs/(max(size(t))-1);

subplot(2,1,2),plot(f,yfm(1:max(size(t))-1));
xlabel('frequency (Hz)','FontSize',16);