clear all;
close all;
T=1;
fs=1000;
t=0.0:1/fs:T;
delta_t=(1/8);
y(1:length(t))=0.0;
y(length(t)/2:(length(t)/2+delta_t*fs))=5.0;
plot(t,y);
y1=fft(y);
plot(fftshift(abs(y1)));







