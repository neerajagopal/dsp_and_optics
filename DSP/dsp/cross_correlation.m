clear all; close all;

t=0.0:0.01:4;
s1(1:100)=0.0;
s1(101:200)=1.0
s1(201:400)=0.0

s2(1:130)=0.0;
s2(131:160)=1.0
s3(161:400)=0.0

[ccr, lags]=xcorr(s1,s2,'coeff')

subplot(3,1,1);plot(s1)
subplot(3,2,1);plot(s2)
subplot(3,3,1);plot(ccr)


