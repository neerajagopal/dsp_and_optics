close all; clear all
figure;
I = zeros(100,100); II=zeros(100,100); III=zeros(100, 100);
I(25:26, 25:26) = 0;
II(50:60, 50:60)=10;
III(55:75, 35:45)=0;
total=I+II+III;
imshow(I+II+III,[],'InitialMagnification','fit')

figure;
theta1=0:90:179;
[p, r]=radon(total, theta1);
plot(radon(total,theta1))

figure;
imshow (p, [], 'xdata', theta1, 'ydata', r, 'InitialMagnification','fit')

figure;
imshow(iradon(p,theta1, 'none'),[], 'InitialMagnification','fit') % try it again with 'none', it will filter and sharpen the image.


figure;
theta2=-180:1:179;
[p2, r2]=radon(total, theta2);
plot(r2,radon(total,theta2))

figure
imshow (p2, [], 'xdata', theta2, 'ydata', r2, 'InitialMagnification','fit')

figure;
imshow(iradon(p2,theta2, 'none'),[], 'InitialMagnification','fit')

