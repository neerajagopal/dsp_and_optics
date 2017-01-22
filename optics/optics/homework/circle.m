function [ h ] = circle( r,x,y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
hold off
end

