% iptsetpref('ImshowAxesVisible','on')
close all; clear all
figure;
I = zeros(100,100); II=zeros(100,100);
I(25:26, 25:26) = 20;
II(50:60, 50:60)=10;
imshow(I+II, []);
figure;
theta = 0:180;
[R,xp] = radon(I+II,theta);
imshow(R,[],'Xdata',theta,'Ydata',xp,...
            'InitialMagnification','fit')
figure;        
imshow(R, []); colormap('hot')
xlabel('\theta (degrees)')
ylabel('x''')
% colormap(hot), colorbar
% ('ImshowAxesVisible','off')