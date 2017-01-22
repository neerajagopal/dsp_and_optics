clear;
close all;
clc;
%% Recording the audio signal
fs=8000; %Sampling frequency
T=3; %Recoding for 1 second
t=0:1/fs:T; %time period
N=T*fs; %Number of samples

breath=audiorecorder;
disp('Start');
recordblocking(breath,T);
disp('Stop')

mydata=getaudiodata(breath);
figure
plot(t(1:end-1),mydata);title('original pressure signal');
grid on
xlabel('Time(seconds)');ylabel('Amplitude');

if mydata(:,:)<0.2
    disp('Record signal again');
end
%% FFT
f=linspace(0,8000,24000);
y_f=abs(fft(mydata));
%y_fs=fftshift(y_f(12001:24000));
figure(2)
plot(f,y_f);title('FFT of the original signal');xlabel('Frequency(Hz)');ylabel('Amplitude');
grid on
%%
thresh=200;
y_filt=zeros(size(y_f));
for i=1:length(y_f)
if y_f(i)>=thresh
    y_filt(i)=y_f(i);  
end
end
figure(3)
plot(f,y_filt(1:length(f)));title('Extracted Signal');xlabel('Frequency(Hz)');ylabel('Amplitude');
y_rec=ifft(y_filt);
figure(4)
plot(abs(y_rec));

    
    
    

