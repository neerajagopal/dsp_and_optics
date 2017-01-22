% BE 5352 Digital Signal Processing
% Neeraja Gopal
% 1001119411
%%
% Question 1
clear;
close all;
clc;
%%
load('Q1_Signal.mat');
y=x1;
%%
%time interval between two data points=6.25*10^-4
fs=1600; %Samples per second %fs=1/(6.25*10^-4)
N=2400; %Total number of samples
T=1.5; %total time period in seconds
t=0:1/fs:T; % time period
figure
plot(t,y);title('Question 1-Original Signal');xlabel('Time(sec)');ylabel('Amplitude(V)');
%Filtering
[b,a]=butter(10,190/800,'high'); %order=10, normalized cut off frequency=100/(fs)/2 
y_f=filter(b,a,y);
figure
plot(t,y_f);title('Question 1-Filtered Signal');xlabel('Time(sec)');ylabel('Amplitude(V)');
%% 
f=linspace(0,1600,2400);
figure
plot(f,abs(fft(y(1:end-1))));title('FFT of the original signal');xlabel('Frequency(Hz)');ylabel('Magnitude');
figure
plot(f,abs(fft(y_f(1:end-1))),'r');title('FFT of the filtered signal');xlabel('Frequency(Hz)');ylabel('Magnitude');
fvtool(b,a);title('Magnitude and Phase response');




