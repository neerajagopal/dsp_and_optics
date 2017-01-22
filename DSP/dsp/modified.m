% filtering in the frequency domain

close all;
clear all;


fs=1000; % sampling frequency
t=0:1/fs:1; % time interval and increment

x2=5*sin(2*pi*60*t); %first signal
x1=sin(2*pi*120*t); % second signal

x1=x1+x2; % sum of signal 1 & 2

plot(t,x1); title('input signal');

X1=fft(x1);% fft of combined signal

f=-fs/2:fs/length(x1):fs/2; % frequency scaling

X1s=fftshift(X1); % frequecy shifting to properly index positive and negative frequency components

%plot(f(1:length(x1)),abs(X1s));

%x2=ifft(X1);

%plot(t,x2,t,x1);
figure

plot(f(1:length(x1)),abs(X1s));

W(1:length(x1))=0.0;%defining rectangular window
W(1:80)=1.0;
W(900:980)=1.0;

X1W=X1.*complex(W); %fft multiplied with a complex
X1Wr=abs(X1).*W;
x1w=ifft(X1W);
x1wr=ifft(X1Wr);
X1m=X1.*complex(pi/2) %(pi/2) phase shift in the frequency domain
x1m=ifft(X1m);

figure;
plot(t,x1w);
hold on;
plot(t,x1wr,'r');
hold on;
plot(t,x2,'g');


