%Assignment 4,5,6 DSP
%Neeraja Gopal 1001119411

%Recording the samples
%Default sampling rate of laptop=8000

%% Sample 1
recorderObj1=audiorecorder;
recordblocking(recorderObj1,5);
y1=getaudiodata(recorderObj1);
play(recorderObj1);
audiowrite('sample1.wav',y1,48000);
%% Sample 2
recorderObj2=audiorecorder;
recordblocking(recorderObj2,5);
y2=getaudiodata(recorderObj2);
play(recorderObj2);
audiowrite('sample2.wav',y2,48000);
%% Sample 3
recorderObj3=audiorecorder;
recordblocking(recorderObj3,5);
y3=getaudiodata(recorderObj3);
play(recorderObj3);
audiowrite('sample3.wav',y3,48000);
%% Sample 4
recorderObj4=audiorecorder;
recordblocking(recorderObj4,5);
y4=getaudiodata(recorderObj4);
play(recorderObj4);
audiowrite('sample4.wav',y4,48000);
%% Sample 5
recorderObj5=audiorecorder;
recordblocking(recorderObj5,5);
y5=getaudiodata(recorderObj5);
play(recorderObj5);
audiowrite('sample5.wav',y5,48000);
%% Sample 6
recorderObj6=audiorecorder;
recordblocking(recorderObj6,5);
y6=getaudiodata(recorderObj6);
play(recorderObj6);
audiowrite('sample6.wav',y6,48000);
%% Sample 7
recorderObj7=audiorecorder;
recordblocking(recorderObj7,5);
y7=getaudiodata(recorderObj7);
play(recorderObj7);
audiowrite('sample7.wav',y7,48000);
%% Sample 8
recorderObj8=audiorecorder;
recordblocking(recorderObj8,5);
y8=getaudiodata(recorderObj8);
play(recorderObj8);
audiowrite('sample8.wav',y8,48000);
%% Sample 9
recorderObj9=audiorecorder;
recordblocking(recorderObj9,5);
y9=getaudiodata(recorderObj9);
play(recorderObj9);
audiowrite('sample9.wav',y9,48000);
%% Sample 10
recorderObj10=audiorecorder;
recordblocking(recorderObj10,5);
y10=getaudiodata(recorderObj10);
play(recorderObj10);
audiowrite('sample10.wav',y10,48000);
%% Sample 11
recorderObj11=audiorecorder;
recordblocking(recorderObj11,5);
y11=getaudiodata(recorderObj11);
play(recorderObj11);
audiowrite('sample11.wav',y11,48000);
%% Sample 12
recorderObj12=audiorecorder;
recordblocking(recorderObj12,5);
y12=getaudiodata(recorderObj12);
play(recorderObj12);
audiowrite('sample12.wav',y12,48000);

%% Loading and Determining the magnitude and  average time period of each sample

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
%W(1:length(Y1))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil1=y_f1.*(W);
%figure(4)
%plot(y_fil1); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil1)); title('Shifted signal');
%t=0:1/fs:5;
%plot(ifft(t,y_fil1))

%N=100;

%for i=1:length(Y1)-N
    
    %a(i)=mean(y_f1(i:N+i));
    
%end
figure(6)
plot(y_f1(1:length(Y1)-N),a); 

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 1
[mag,freq]=max(abs(y_f1));
freq_desired=(freq.*8192)/(length(y_f1)); %where fs=8192
time1=1/freq_desired;

%% Sample 2
Y2=audioread('sample2.wav');
y_f2=abs(fft(Y2));
y_fs2=fftshift(y_f2);
figure(1)
plot(Y2); title('Sample 2'); 
figure(2)
plot(y_f2); title('FFT of sample 2');
figure(3)
plot(y_fs2); title('FFT(Shifted) of Sample 2');
W(1:length(Y2))=0;
W(1000:19000)=1;
W(21000:39000)=1;
y_fil2=y_f2*(W);
figure(4)
plot(y_fil2); title('Filtered FFT');
figure(5)
plot(fftshift(y_fil2)); title('Shifted signal');

%Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 2
[mag2,freq2]=max(abs(y_f2));
freq_desired2=(freq2.*8192)/(length(y_f2)); %where fs=8192
time2=1/freq_desired2;
%% Sample 3
Y3=audioread('sample3.wav');
y_f3=abs(fft(Y3));
y_fs3=fftshift(y_f3);
figure(1)
plot(Y3); title('Sample 3'); 
figure(2)
plot(y_f3); title('FFT of sample 3');
figure(3)
plot(y_fs3); title('FFT(Shifted) of Sample 3');
W(1:length(Y3))=0;
W(1000:19000)=1;
W(21000:39000)=1;
y_fil3=y_f3*(W);
figure(4)
plot(y_fil3); title('Filtered FFT');
figure(5)
plot(fftshift(y_fil3)); title('Shifted signal');

%Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 3
[mag3,freq3]=max(abs(y_f3));
freq_desired3=(freq3.*8192)/(length(y_f3)); %where fs=8192
time3=1/freq_desired;
%% Sample 4
Y4=audioread('sample4.wav');
y_f4=abs(fft(Y4));
y_fs4=fftshift(y_f4);
figure(1)
plot(Y4); title('Sample 4'); 
figure(2)
plot(y_f4); title('FFT of sample 4');
figure(3)
plot(y_fs4); title('FFT(Shifted) of Sample 4');
W(1:length(Y4))=0;
W(1000:19000)=1;
W(21000:39000)=1;
y_fil4=y_f4*(W);
figure(4)
plot(y_fil4); title('Filtered FFT');
figure(5)
plot(fftshift(y_fil4)); title('Shifted signal');

%Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 4
[mag4,freq4]=max(abs(y_f4));
freq_desired4=(freq4.*8192)/(length(y_f4)); %where fs=8192
time4=1/freq_desired4;
%% Sample 5
Y5=audioread('sample5.wav');
y_f5=abs(fft(Y5));
y_fs5=fftshift(y_f5);
figure(1)
plot(Y5); title('Sample 5'); 
figure(2)
plot(y_f5); title('FFT of sample 5');
figure(3)
plot(y_fs5); title('FFT(Shifted) of Sample 5');
W(1:length(Y5))=0;
W(1000:19000)=1;
W(21000:39000)=1;
y_fil5=y_f5*(W);
figure(4)
plot(y_fil5); title('Filtered FFT');
figure(5)
plot(fftshift(y_fil5)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 5
[mag5,freq5]=max(abs(y_f5));
freq_desired5=(freq5.*8192)/(length(y_f5)); %where fs=8192
time5=1/freq_desired5;
%% Sample 6
Y6=audioread('sample6.wav');
y_f6=abs(fft(Y6));
y_fs6=fftshift(y_f6);
figure(1)
plot(Y6); title('Sample 6'); 
figure(2)
plot(y_f6); title('FFT of sample 6');
figure(3)
plot(y_fs6); title('FFT(Shifted) of Sample 6');
%W(1:length(Y6))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil6=y_f6*(W);
%figure(4)
%plot(y_fil6); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil6)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 6
[mag6,freq6]=max(abs(y_f6));
freq_desired6=(freq6.*8192)/(length(y_f6)); %where fs=8192
time6=1/freq_desired6;
%% Sample 7
Y7=audioread('sample7.wav');
y_f7=abs(fft(Y7));
y_fs7=fftshift(y_f7);
figure(1)
plot(Y7); title('Sample 7'); 
figure(2)
plot(y_f7); title('FFT of sample 7');
figure(3)
plot(y_fs7); title('FFT(Shifted) of Sample 7');
%W(1:length(Y7))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil7=y_f7*(W);
%figure(4)
%plot(y_fil7); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil7)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 7
[mag7,freq7]=max(abs(y_f7));
freq_desired7=(freq7.*8192)/(length(y_f7)); %where fs=8192
time7=1/freq_desired7;
%% Sample 8
Y8=audioread('sample8.wav');
y_f8=abs(fft(Y8));
y_fs8=fftshift(y_f8);
figure(1)
plot(Y8); title('Sample 8'); 
figure(2)
plot(y_f8); title('FFT of sample8');
figure(3)
plot(y_fs8); title('FFT(Shifted) of Sample 8');
%W(1:length(Y8))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil8=y_f8*(W);
%figure(4)
%plot(y_fil8); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil8)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 8
[mag8,freq8]=max(abs(y_f8));
freq_desired8=(freq8.*8192)/(length(y_f8)); %where fs=8192
time8=1/freq_desired8;
%% Sample 9
Y9=audioread('sample9.wav');
y_f9=abs(fft(Y9));
y_fs9=fftshift(y_f9);
figure(1)
plot(Y9); title('Sample 9'); 
figure(2)
plot(y_f9); title('FFT of sample 9');
figure(3)
plot(y_fs9); title('FFT(Shifted) of Sample 9');
W(1:length(Y9))=0;
W(1000:19000)=1;
W(21000:39000)=1;
y_fil9=y_f9*(W);
figure(4)
plot(y_fil9); title('Filtered FFT');
figure(5)
plot(fftshift(y_fil9)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 9
[mag9,freq9]=max(abs(y_f9));
freq_desired9=(freq9.*8192)/(length(y_f9)); %where fs=8192
time9=1/freq_desired9;
%% Sample 10
Y10=audioread('sample10.wav');
y_f10=abs(fft(Y10));
y_fs10=fftshift(y_f10);
figure(1)
plot(Y10); title('Sample 10'); 
figure(2)
plot(y_f10); title('FFT of sample 10');
figure(3)
plot(y_fs10); title('FFT(Shifted) of Sample 10');
%W(1:length(Y10))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil10=y_f10*(W);
%figure(4)
%plot(y_fil10); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil10)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 1
[mag10,freq10]=max(abs(y_f10));
freq_desired10=(freq10.*8192)/(length(y_f10)); %where fs=8192
time10=1/freq_desired10;
%% Sample 11
Y11=audioread('sample11.wav');
y_f11=abs(fft(Y11));
y_fs11=fftshift(y_f11);
figure(1)
plot(Y11); title('Sample 11'); 
figure(2)
plot(y_f11); title('FFT of sample 11');
figure(3)
plot(y_fs11); title('FFT(Shifted) of Sample 11');
%W(1:length(Y11))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil11=y_f11*(W);
%figure(4)
%plot(y_fil11); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil11)); title('Shifted signal');

%% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 11
[mag11,freq11]=max(abs(y_f11));
freq_desired11=(freq11.*8192)/(length(y_f11)); %where fs=8192
time11=1/freq_desired11;
%% Sample 12
Y12=audioread('sample12.wav');
y_f12=abs(fft(Y12));
y_fs12=fftshift(y_f12);
figure(1)
plot(Y12); title('Sample 12'); 
figure(2)
plot(y_f12); title('FFT of sample 12');
figure(3)
plot(y_fs12); title('FFT(Shifted) of Sample 12');
%W(1:length(Y12))=0;
%W(1000:19000)=1;
%W(21000:39000)=1;
%y_fil12=y_f12*(W);
%figure(4)
%plot(y_fil12); title('Filtered FFT');
%figure(5)
%plot(fftshift(y_fil12)); title('Shifted signal');

 %% Magnitude
%[peaks,loc]=findpeaks(y_f1);
%peaks_avg=mean(mean(peaks)); %Average magnitude of sample 12
[mag12,freq12]=max(abs(y_f12));
freq_desired12=(freq12.*8192)/(length(y_f12)); %where fs=8192
time12=1/freq_desired12;

%% Average magnitude for all the 12 samples
avg_mag=mean(mag+mag2+mag3+mag4+mag5+mag6+mag7+mag8+mag9+mag10+mag11+mag12);
avg_time=mean(time1+time2+time3+time4+time5+time6+time7+time8+time9+time10+time11+time12);
capcity=avg_mag*avg_time; %Lung capacity will be the area under the curve; Area=mag*time.
disp(capacity);


%% The lung capacity obtained by using the app = 2112 milliliter.



























