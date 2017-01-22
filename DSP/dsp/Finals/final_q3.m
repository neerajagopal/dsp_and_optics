% BE 5352 Digital Signal Processing
% Neeraja Gopal
% 1001119411
%% Question 3
clear;
close all;
clc;
load('Q3_Signal.mat')
y=signal3;
T=5;
N=40000;
fs=8000;
t=0:1/fs:T;
figure
y_s=spectrogram(y);
spectrogram(y,800,400,1024,8000,'yaxis');title('Spectrogram of original signal') %100 msec window
[b,a]=butter(10,2400/16000,'low');
y_fil=filter(b,a,y);
figure
spectrogram(y_fil,800,400,1024,8000,'yaxis');title('Spectrogram after filtering')


