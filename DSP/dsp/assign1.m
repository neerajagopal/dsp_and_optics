% DSP Homework 1
% Neeraja Gopal-1001119411
% time (in minutes) vs heart rate plot

clear all;
close all;
clc;
T=0:15;
HR=[98,105,105,106,115,122,118,113,116,120,124,116,116,117,120,128];
figure;
plot(T,HR);xlabel('Time in minutes');ylabel('Heart Rate in BPM');
title('Variation in Heart rate with 15 minutes of exercise');




