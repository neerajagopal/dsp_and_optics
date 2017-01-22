% iptsetpref('ImshowAxesVisible','on')
close all; clear all
figure;
I = zeros(100,100); II=zeros(100,100); III=zeros(100, 100);
I(25:26, 25:26) = 20;
II(50:60, 50:60)=10;
III(55:75, 35:45)=10;
imshow(I+II+III,[],'InitialMagnification','fit')
figure;
theta = 0:180;
R1 = radon(II,theta);
R2=radon(III,theta);
[R3,xp] = radon(I+II+III,theta);
imshow(R1,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit')
figure;
imshow(R2,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit')
figure;
imshow(R3,[],'Xdata',theta,'Ydata',xp)
figure;        
imshow(R3, [],'InitialMagnification','fit'); colormap('hot')

xlabel('\theta (degrees)')
ylabel('x''')
% colormap(hot), colorbar
% ('ImshowAxesVisible','off')