clear all;
close all;
fs=3000; %samping rate
T=10;
t=0:1/fs:T; %time period
y1=sin(2*pi*5*t);
y2=sin(2*pi*5.5*t);
y_t=y1+y2;
figure;
plot(t,y_t);xlabel('time in seconds');
y_f=fft(y_t);
y_m=fftshift(abs(y_f));
figure;
plot(t,y_m);





