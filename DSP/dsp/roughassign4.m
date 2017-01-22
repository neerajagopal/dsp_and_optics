%Sample 1
Y1=audioread('sample1.wav');
y_f1=abs(fft(Y1));
y_fs1=fftshift(y_f1);
figure(1)
plot(Y1); title('Sample 1'); 
figure(2)
plot(y_f1); title('FFT of sample 1');
figure(3)
plot(y_fs1); title('FFT(Shifted) of Sample 1');
W(1:length(Y1))=0;
W(1000:19000)=1;
W(21000:39000)=1;
y_fil1=y_f1*(W);
figure(4)
plot(y_fil1); title('Filtered FFT');
figure(5)
plot(fftshift(y_fil1)); title('Shifted signal');