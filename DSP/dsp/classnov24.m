clear all;
close all;
clc;
fs=1000;
t=0:1/fs:1;
y1=sin(2*pi*50*t);
y2=sin(2*pi*100*t);
y=y1+y2;
%load('Hd5.mat');
%y_f=filter(Hd5,y);
%load('Hd6.mat');
%y_fir=filter(Hd6,y);
%figure;
%plot(y);
%hold on
%plot(y_f,'r');
%hold on
%plot(y_fir,'g');
[b,a]=butter(10,60/500,'low');
[B,A]=cheby1(10,0.5,60/500,'low');
y_f=filter(B,A,y);
figure;
plot(y1);
hold on
plot(y_f,'r');
y1_h=hilbert(y1);
figure(2)
plot(real(y1_h));
hold on
plot(imag(y1_h,'g'));

