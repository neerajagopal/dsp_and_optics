%DSP Exam 1
%Question 2

fs=50000; %Assuming >fmax
t=0:1/fs:0.1;%tot time
a=load('signal1.mat');
y=a.y;
plot(t,y);
fmax=30000/2;
resolution=(0.1/1024); %tot time divided by the no of bits.



