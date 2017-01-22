% BE 5352 Digital Signal Processing
% Neeraja Gopal
% 1001119411
%% Question 2
clear;
close all;
clc;
%% 
load('Q2_Signal.mat')
y=x1;
%time interval between two data points=6.25*10^-4
fs=1600; %Samples per second %fs=1/(6.25*10^-4)
N=2400; %Total number of samples
T=1.5; %total time period in seconds
t=0:1/fs:T; % time period
figure
plot(t,y);title('Question 2-Original Signal');xlabel('Time(sec)');ylabel('Amplitude(V)');
f=linspace(0,1600,2400);
figure
plot(f,abs(fft(y(1:end-1))));title('FFT of the original signal');xlabel('Frequency(Hz)');ylabel('Magnitude');
%%
load('fir_eq.mat')
y_f=filter(fir_eq,y);
figure
plot(t,y_f);title('filtered signal');xlabel('time(sec)');ylabel('Frequency(Hz)')
figure
plot(f,abs(fft(y_f(1:end-1))));title('FFT of the filtered signal');xlabel('Frequency(Hz)');



