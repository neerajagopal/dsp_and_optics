%Example #3 : Rolling average filter

close all; clear all;  
 
T=2; % total time period over which signal was sampled
fs=3000; % Sampling rate

t=0.0:1/fs:T;
y=sin(2*pi*5*t);
n=randn(1,length(t));
y1=y+n;

subplot(2,1,1), plot(t,y1);
xlabel('time (seconds)','FontSize',16);


N=100;

for i=1:length(t)-N
    
    a(i)=mean(y1(i:N+i));
    
end

subplot(2,1,2), plot(t(1:length(t)-N),a,'r');   

