clear all;
close all;
clc;
fs=21600; %360 samples per second tht is 21600/60sec.. thr are 21600 data points recorded for 60 sec.
load('mgh009m.mat');
y=val;
t=0:60/fs:60;
figure(1);
plot(t(1:end-1),y);xlabel('time period(sec)');ylabel('Amplitude(V)');
% FFT
f=(-fs/2:fs/length(y):fs/2);%scaling
y_f=fft(y);
figure(2)
%plot(f(1:length(f)),abs(y_f));
plot(abs(y_f))

%%
for i=1:length(y)
    if y(i)<350
        x(i)=0.0;
    else 
       x(i)=y(i);
    end
end

hold on;
plot(x,'r');

d(1:length(y))=0.0;
count=0.0;

for i=1:length(y)-1;
    
  d(i)=x(i)-x(i+1);
 
end

for i=1:length(y)-1;
    
  if d(i)<0.0 && d(i+1)>0
      
      count=count+1
      %RR(count)=t(i);
      end
  
end
%% Frequency scaling
f=0:180
%%
figure(1)
spectrogram(y,250,200,256,360,'yaxis');
figure(2)
spectrogram(y,50,40,64,360,'yaxis');
%%
load('filt1.mat');
Y=filter(filt1,y);
figure(5)
spectrogram(Y,250,200,256,360,'yaxis');title('Notch Filter 60 hz noise');
load('filt2.mat');
load('filt3.mat');
load('filt4.mat');
Y_1=filter(filt4,Y);
figure(4)
plot(Y);title('Using Notch Filter')
hold on
plot(Y_1,'r');title('Using Low Pass Filter')
hold on
plot(y,'g');title('original signal');







