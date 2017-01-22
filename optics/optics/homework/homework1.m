clear all;
close all;
clc;
%% Question 1
%given data
A=[1.4,5.7,2.1,4.1,1.6,2.8,2.3,5.1,1.1,6.7;0.6,4.3,7.4,8.5,9.0,7.9,8.5,4.1,5.4,1.2;2.3,3.7,3.2,0.4,8.0,5.6,3.3,4.5,4.9,6.5;5.4,5.1,6.0,5.6,7.9,2.3,7.1,2.0,3.6,4.1;6.2,2.5,4.9,2.1,8.1,4.8,4.5,6.2,1.1,3.2;2.3,1.2,1.7,3.4,7.8,4.7,2.1,5.5,7.1,4.5;0.7,4.5,0.2,5.2,9.1,3.9,7.5,2.0,2.3,6.7;2.3,5.9,5.9,1.6,8.3,1.7,5.2,4.7,6.5,2.6;4.9,0.4,3.4,2.3,6.4,0.5,2.3,6.5,3.2,2.7;3.8,5.6,2.7,6.1,5.5,6.2,5.0,5.8,2.3,4.8];
figure
hist(A(:),64);xlabel('Gray level varying from 1 to 10');ylabel('Number of pixels in each gray level');title('Histogram');
%% Question 2
figure;
imagesc(A);title('Original Image');
%Thresholding 
thr= 7.5;
A1=((A<thr));
A2=A1*0;
A3=(A>=thr);
A4=A3*1; 
AA=A4+A2;
figure
imagesc(AA);title('Image after Thresholding');
%% Question 3
%Smoothing filter
Ksmooth=1/10*[1,1,1;1,2,1;1,1,1];
Asmooth=conv2(Ksmooth,A);
figure
imagesc(Asmooth);title('Smoothing-Low pass filter');
%% Question 4
avg=mean(mean(A));
background=A(1:2,1:2);
back_noise=std(std(background));
snr=avg/back_noise
max=max(max(A));
min=min(min(A));
diff=abs(max-min);
cnr=diff/back_noise










