%BE 5352 Digital Signal Processing 
%Final Project-Lung capacity measurement

%Neeraja Gopal
%1001119411

clear;
close all;
clc;
%% Recording the audio(exhalation)
fs=8000; %default sampling rate for laptops
T=1;
t=0:1/fs:T;%recording forced exhalation for 1 second
N=T*fs; %Number of samples
%breath=audiorecorder(48000,8,2); %creating audio recorder object

%Recording
breath=audiorecorder;
disp('Start');
recordblocking(breath,1);
disp('Stop');

mydata=getaudiodata(breath);
figure(1)
plot(t(1:end-1),mydata);title('original pressure signal');
grid on
xlabel('Time(seconds)');ylabel('Amplitude');

%% Taking fourier transfrom of the audio signal
f=linspace(0,N,fs);
y_f=abs(fft(mydata));
%y_fshifted=fftshift(y_f);
figure(2)
plot(f(1:N/2),y_f(1:N/2));title('FFT of the original signal');xlabel('Frequency(Hz)');
grid on

% %% Spectrogram
% figure(3)
% spectrogram(mydata,80,40,1024,8000);title('1sec');
% %after filtering hilbert envelope detection, then filter again , then use
% %flowrate formula, the plot flowrate vs. time and dget volume

%% Envelope Detection
hil=hilbert(mydata);
figure(4)
plot(imag(hil));title('Hilbert Transform')
grid on
envelope=sqrt(real(hil).^2+(imag(hil).^2));
figure(5)
plot(abs(envelope));
grid on
%% Spectrogram
figure(6)
spectrogram(abs(envelope),80,40,1024,8000);
load('lp_filt');
sig_filt=filter(lp_filt,envelope);
figure(7)
plot(abs(sig_filt));
%% Converting to flowrate
pressure=trapz(sig_filt);
flowrate=sqrt(2*(abs(pressure))/1)*(pi*(.4^2));
lung_capacity=flowrate*T














