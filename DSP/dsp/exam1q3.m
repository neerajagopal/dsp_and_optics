 % Digital Signal Processing-Exam 1
% Question 3
% Filtering

fs=1200;
t=0:1/fs:1;
val=load('signal2.mat');
y=val.y;
figure(1);
plot(t,y);xlabel('time period(sec)');ylabel('Amplitude(V)');
y_f=abs(fft(y));
y_fs=fftshift(y_f);
f=(-fs/2:fs/length(t):fs/2);%scaling
figure(2);
plot(y_f);%without shift
figure(3);
plot(f(1:length(t)),y_fs);%frequency plot with shift
W(1:length(t))=1;
W(102:145)=0;
W(1060:1100)=0;
y_fil=y_f.*complex(W);
figure(4)
plot(y_fil);%filtered signal in frequency domain
y_fil_s=fftshift(y_fil);
figure(5);
plot(f(1:length(t)),y_fil_s);%scaled filtered signal
y_i=ifft(y_fil_s);
figure(6);
plot(t,real(y_i));








