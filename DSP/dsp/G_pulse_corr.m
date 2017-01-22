clear all; close all;
fs=1000; % sampling rate

A=1;
alpha1=11.09;
alpha2=0.776
t01=1.0;
t02=5.0;

t=0:1/fs:10;

r=0.5*randn(1,10001); % noise

y1=A*exp(-alpha1*(t-t01).*(t-t01));

y2=A*exp(-alpha1*(t-t02).*(t-t02));
y2n=A*exp(-alpha1*(t-t02).*(t-t02))+r;

[acor12 lag12]=xcorr(y1,y2,'coeff');
[acor12n lag12n]=xcorr(y1,y2n,'coeff');

figure 
plot(lag12,acor12);
hold on;
plot(lag12n,acor12n,'r');

Y1=fftshift(abs(fft(y1)));
Y2=fftshift(abs(fft(y2)));


