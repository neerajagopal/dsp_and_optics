%BE 5346 Medical Imaging
% Homework Assignment 3(a)

clear all;
close all;
clc;
%% Question 4
x=(-3.14:0.1:3.14); %x limit
f_x=cos(2*x);
figure;
subplot(2,1,1);
plot(f_x);title('Original plot');
f_x1=fft(f_x);
subplot(2,1,2);
plot(abs(f_x1));title('Plot after 1D fourier transform');
% Comments:
% These figures are the same as what was taught in class. The given cosine
% function was plotted and a 1D fourier transform was performed which
% showed the positive and negative frequency present.
%% Question 5
[x,y]=meshgrid(-10:0.2:10);
z1=cos(2*pi*0.2*x);
z2=cos(2*pi*0.2*y);
subplot(2,1,1)
mesh(z1);title('Original Plot 1');
subplot(2,1,2)
mesh(z2);title('Original Plot 2');
f_xy=z1.*z2;
figure;
mesh(f_xy);title('Multiplied plot');
figure;
plot(abs(fft2(f_xy)));title('Fourier transform of the multiplied function');
% Comments:
% The mesh plots of the given functions show the cosine function in x and y
% plane. When the functions are multiplied, the resulting function varies both in x and y plane. 
% The fft of this shows the frequencies corresponding to the product of the original functions. 
%% Question 6
%Sinogram for x and y axis
close all; 
clear all
figure;
I=zeros(100,100); 
II=zeros(100,100);
I(25:26, 25:26)=50;
II(50:60, 50:60)=20;
imshow(I+II,[]);title('Adding I and II, plotting them together');
figure;
theta=0:179;
[R,xp]=radon(I+II,theta);
imshow(R,[],'Xdata',theta,'Ydata',xp,...
            'InitialMagnification','fit');title('Randon transform')
figure;        
imshow(R, []);title('Radon Transform');
colormap('hot')
xlabel('theta (degrees)')
ylabel('xp')

%% Sinogram for a circle
close all; 
clear all
figure;
I=zeros(100,100); 
I(49:51,49:51)=50;% closest form of a circle
imshow(I);title('Original figure')
figure;
theta=0:179;
[R,xp]=radon(I,theta);
imshow(R,[],'Xdata',theta,'Ydata',xp,...
            'InitialMagnification','fit');title('Randon Transform');
figure;        
imshow(R,[]);title('Radon Transform');
colormap('hot')
xlabel('theta (degrees)')
ylabel('xp')





