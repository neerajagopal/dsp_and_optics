clear all;
close all;
clc
%% Sample 1
fs=8000;
%t=0:1/fs:5;
recorderObj3=audiorecorder;
recordblocking(recorderObj3,5);
y1=getaudiodata(recorderObj3);
play(recorderObj3);
audiowrite('sample1.wav',y1,48000);
[Y1,fs]=audioread('sample1.wav');
figure(1)
subplot(3,4,1)
plot(Y1);
y_f=abs(fft(Y1));
y_fs=fftshift(y_f);
%f=(-fs/2:fs/length(t):fs/2);
figure(2)
plot(y_fs);

%% Sample 2
recorderObj3=audiorecorder;
recordblocking(recorderObj3,5);
y2=getaudiodata(recorderObj3);
play(recorderObj3);
audiowrite('sample2.wav',y2,48000);
figure(1)
subplot(3,4,2)
plot(y2);
y_f2=abs(fft(y2));
y_fs2=fftshift(y_f2);
%f=(-fs/2:fs/length(t):fs/2);
figure(3)
plot(y_fs2);

%% Sample 3
recorderObj3=audiorecorder;
recordblocking(recorderObj3,5);
y3=getaudiodata(recorderObj3);
play(recorderObj3);
audiowrite('sample3.wav',y3,48000);
figure(1)
subplot(3,4,3)
plot(y3);
y_f3=abs(fft(y3));
y_fs3=fftshift(y_f2);
%f=(-fs/2:fs/length(t):fs/2);
figure(4)
plot(y_fs3);