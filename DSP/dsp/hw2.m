clear all;
close all;
clc;

Fs=1000; %smpling frequency
t=0:1/Fs:10;
f1=440; %Pure A4 note frequency
f2=493.883; %Pure B4 note frequency

for i=1:length(t)
    if i>=0&&i<=4
        y=sin(2*pi*f1*t);
    elseif i>=4&&i<=8
        y=sin(2*pi*f2*t);
    else
        y=(sin(2*pi*f1*t))+(sin(2*pi*f2*t));
    end
end
figure;
plot(t,y); xlabel('time in seconds'); ylabel('Amplitude');

%Playing Sound Signal
sound(y,Fs);

%Writing it as an audio File
audiowrite('dsp.wav',y,44100); %mandatory sampling frequency to save as mp4 file.







        
        
