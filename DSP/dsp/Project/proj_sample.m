% BE 5352 Digital Signal Processing
%Lung Capacity Measurment
%%
clear;
close all;
clc;
%% Recording the audio signal
fs=8000; %Sampling frequency
T=1; %Recoding for 1 second
t=0:1/fs:T; %time period
N=T*fs; %Number of samples

breath=audiorecorder; %recording the signal for 1 second
disp('Start');
recordblocking(breath,T);
disp('Stop')

mydata=getaudiodata(breath);
%audiowrite('Sample_1.wav',mydata,48000);
figure
plot(t(1:end-1),mydata);title('original pressure signal-Sample 1');
grid on
xlabel('Time(seconds)');ylabel('Amplitude(Units)');

% Thresholding
if mydata(:)<0.2 %if amplitude of the signal is less than 0.2, the subject is not blowing out properly
    disp('Record signal again');
end

%% FFT 
f=linspace(0,N,8000);
y_f=(fft(mydata));
figure(2)
plot(f,y_f);title('FFT of the original signal');xlabel('Frequency(Hz)');ylabel('Magnitude');
grid on

%% Filtering out all the high frequency components
W(1:8000)=0.0; %selecting appropriate window, here selecting all components within 10 Hz
W(1:10)=1;
W(7990:8000)=1;
Y_m=complex(W').*y_f;
figure
plot(f,Y_m);title('Signal after windowing');xlabel('Frequency(Hz)');ylabel('Magnitude')
ym=ifft(Y_m);
figure
plot(t(1:end-1),abs(ym));title('Filtered signal');xlabel('Time(sec)');ylabel('Amplitude (Units)')
 %% Spectrogram
 figure
 y_s=spectrogram(ym);
 spectrogram(ym,800,400,1024,8000,'yaxis');title('Spectrogram of the filtered signal') %for 100 msec
% %% Hilbert Transform
% hil=hilbert(ym);
% envelope=sqrt(ym).^2+(hil).^2;
% figure
% plot(abs(envelope))
% %% Spectrogram
% figure
% spectrogram(envelope,240,120,1024,24000);

 %lowpass filtering
 load('lp_filt3'); %loading filter designed using fda tool
 final_filt=filter(lp_filt3,ym);
 figure
 plot(t(1:end-1),abs(final_filt));title('Extracted Exhalation signal');xlabel('time(sec)');ylabel('Amplitude (Units)');
 
%% Area under the curve
vol=trapz(t(1:8000),abs(final_filt(1:8000))); %representative of volume
%flowrate=sqrt(2*(pressure)/1)*(pi*(.2^2)); %flowrate formula
peak_flowrate=max(abs(final_filt));
%% Calibration
%Lung Capacity
vol_mean=mean([0.0029,0.0045,0.0023,0.0048,0.0051]);%sample readings
spiro=[2.78,2.78,2.82,2.93,2.82]; %spirometer reading
avg=mean(spiro);
mul_factor=avg/vol_mean; %multiplication factor
FEV1=mul_factor*vol %total lung capacity
%Flowrate
peakflow_mean=mean(60*[0.0449,0.0355,0.0211,0.0408,0.0079]); %sample readings
spiro_fr=mean([314 361 380 382 409]); %readings from spirometer
mul=spiro_fr/peakflow_mean; %multiplication factor
Flowrate=mul*(peak_flowrate*60) %flow rate













