% BE 3546 Medical Imaging
% Homework 3(b)

%Neeraja Gopal(1001119411)

%% Question 1
clear all;
clc;
close all;
%Original Image
I=zeros(100,100); %creating a zero matrix
I(40:50,40:50)=50; %proving pixel intensities such that it forms a square.
figure;
imshow(I,[],'InitialMagnification','fit');title('original image'); %magnifying the image and displaying it.
%we use empty square brackets to adjust the gray levels instead of a binary
%scale
%% Radon transfrom for 2 theta values
theta=-180:200:180; %defining the angle of measuremnt
[R,xp]=radon(I,theta); %performing radon transform at the provided theta values
% xp has the corresponding radical coordinates for R
figure;
imshow(R,[],'Xdata',theta,'Ydata',xp,...
            'InitialMagnification','fit');title('Radon projections for 2 theta values -180 and 20');
%plots the radon transform projections with respect to r and theta
figure;
plot(radon(I,theta));title('Sinogram of radon of I') %plotting the sinogram for each theta value
%% Radon transform for 4 theta values
theta_1=-180:100:180; %defining the step such that we get 4 projection angles
[R1,xp1]=radon(I,theta_1); %performing radon transform
%xp1 has the corresponding radical coordinates for R1
figure;
imshow(R1,[],'Xdata',theta_1,'Ydata',xp1,'InitialMagnification','fit');
%plots the radon transform projections with respect to r and theta
title('Radon projections for 4 theta values -180,-80,20,120');
figure;
plot(radon(I,theta_1));title('Sinogram of radon of I')%plotting the sinograms for the 4 projection angles
%% Radon transform for 90 theta values
theta_2=-180:4:180;%defining theta so that we have 90 projection angles
[R2,xp2]=radon(I,theta_2);%performing radon transform
%xp2 has the corresponding radical coordinates for R2
figure;
imshow(R2,[],'Xdata',theta_2,'Ydata',xp2,'InitialMagnification','fit');
title('Radon projections for 90 theta values');
figure;
plot(radon(I,theta_2));title('Sinogram of radon of I');%plotting the sinograms for the 90 projection angles
%% Backprojection with no filter
figure;
imshow(iradon(R2,theta_2,'none'),[],'InitialMagnification','fit');title('Reconstructed Image');
%using the function iradon to perform backprojection. This is unfiltered
%backprojection.

%FLOWCHART OR ALGORITHM
% Step 1: Initialize the intial figure, in this case a square by creationg a matrix and assigning corresponding intensity values.
% Step 2: Plot or display the image using imshow. 
% Step 3: Perform radon transform by using the function radon().
% Step 4: Display the radon projections using imshow.
% Step 5: Perform unfiltered backprojection using the function iradon() and 'none' inside it.
%% Question 2
clear all;
close all;
clc;
%Original Figure
I=zeros(100,100); 
II=zeros(100,100); 
III=zeros(100, 100);
I(25:26,25:26) =50;
II(50:60,50:60)=90;
III(55:75,35:45)=25;
total=I+II+III;
figure;
imshow(I+II+III,[],'InitialMagnification','fit');title('Original Image');
%radon transform for 2 theta values
theta=-180:180:180;
[R,xp]=radon(total,theta);
figure;
imshow(R,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit');
title('Radon projections for 2 theta values -180 and 0');
figure;
plot(radon(total,theta));title('Sinogram of radon of total at 2 theta values');
%radon transform for 4 theta values
theta_1=-180:100:180;
[R1,xp1]=radon(total,theta_1);
figure;
imshow(R1,[],'Xdata',theta_1,'Ydata',xp1,'InitialMagnification','fit');
title('Radon projections for 4 theta values -180,-80,20,120');
figure;
plot(radon(total,theta_1));title('Sinogram of radon of total at 4 theta values');
%radon transform for 90 theta values
theta_2=-180:4:180;
[R2,xp2]=radon(total,theta_2);
figure;
imshow(R2,[],'Xdata',theta_2,'Ydata',xp2,'InitialMagnification','fit');
title('Radon projections for 90 theta values');
figure;
plot(radon(total,theta_2));title('Sinogram for total at 90 theta values');
%Backprojection with no filter
figure;
imshow(iradon(R2,theta_2,'none'),[],'InitialMagnification','fit');
title('Reconstructed Image');

% Comments
% When we observe the first sinogram image, we can clearly differentiate as to which sinogram corresponds to which square by 
% observing the amplitude or peak of the signal. This denotes the amount of absorption. That is, the most absorption will be the area of the square,
% which will be denoted by the peak. Bigger the square and its intensity, higher the peak.
%% Question 3
%X-Y axis Sinogram plots
clear all;
close all;
clc;
I=zeros(100,100);
I(50:51,20:80)=50;
I(20:80,50:51)=50;
figure;
imshow(I,[],'InitialMagnification','fit');title('Original Image');
%plotting Sinogram
theta=180:180;
figure;
plot(radon(I,theta));title('Sinogram');
%% Radon transform for a circle
clear all;
close all;
clc;
%Creating a circle
x=1:100;
y=1:100;
c=zeros(100,100);
for i=1:100
    for j=1:100
        if ((x(i)-50)^2+(y(j)-50)^2)<=100 %centre being (50,50) and radius is 10
            c(i,j)=20;
        else
            c(i,j)=0;
        end
    end
end
figure;
imshow(c,[],'InitialMagnification','fit');title('Original Image');
%Performing radon transform
theta=-180:180;
[R,xp]=radon(c,theta);
figure;
imshow(R,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit');title('Radon projections');
%sinogram
figure;
plot(radon(c,theta));title('Sinogram');
%% Question 4
A=phantom(100);
figure;
imshow(A,[],'InitialMagnification','fit');title('Original Image');
%Radon Transformation
theta=-180:180; %360 different theta values
[R,xp]=radon(A,theta);
figure;
imshow(R,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit');
title('Radon transform projections at  angles');
figure;
plot(radon(A,theta));title('Sinograms');
%backprojection without filter
figure;
imshow(iradon(R,theta,'none'),[],'InitialMagnification','fit');title('Reconstruction without filter');
%backprojection with default filter
figure;
imshow(iradon(R,theta,'Ram-Lak'),[],'InitialMagnification','fit');title('Reconstruction using Default filter');
%backprojection with default filter aloning with other filters
figure;
imshow(iradon(R,theta,'Hamming'),[],'InitialMagnification','fit');
title('Reconstruction using Hamming window');

% Comments
% The reconstructed image is much better when a filter was used. Otherwise, the constrast was very poor. 
% The default filter improves the contrast drastically whereas adding any
% other filter along with the default filter does not show any improvement
% in this case.




 





        



