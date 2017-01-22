clear all;
close all;
clc;
% Record audio for 5 seconds.
recObj=audiorecorder;
disp('Start recording.')
recordblocking(recObj, 5);
disp('End of Recording.');

% Play back the recording.
play(recObj);

% Store data in double-precision array.
y = getaudiodata(recObj);

% Plot the waveform.
figure(1)
plot(y);

%Spectrogram %Short term Fourier Transform (Frequency of a signal as a
%function of time)
figure(2)
spectrogram(y,8000,4000,8192,8000,'yaxis');title('1sec');
figure(3)
spectrogram(y,2000,1000,2048,8000,'yaxis');title('250msec');
figure(4)
spectrogram(y,400,200,512,8000,'yaxis');title('50msec');