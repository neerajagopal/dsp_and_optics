%DSP Exam 1
%ques 3
t=0;
x=[0,0,8,16,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
y=[-1,0,1,0,1,1,-1,0,0,1,-1,1,1,7,15,5,0,0,0];
[acorr lag]=xcorr(x,y);
figure;
plot(lag,acorr);




