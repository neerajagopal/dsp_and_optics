close all; clear all
 figure;
 I = zeros(100,100); II=zeros(100,100); 
 III=zeros(100, 100);
 I(25:26, 25:26) = 0;
 II(50:60, 50:60)=100; 
 III(55:75, 35:45)=0;
 total=I+II+III;
 imshow(total,[],'InitialMagnification','fit')
 figure;
 theta1=0:90:179;
 plot(radon(total,theta1))
