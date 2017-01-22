clear all; close all;

m=0.5;

t=0:1/40000:1;
f=linspace(0,40000,20000);

am=(1+m*sin(2*pi*50*t+pi/4)).*sin(2*pi*5000*t);
    
am_a=abs(am);

[b, a]=butter(10,400/20000,'low');

am_a_f=filter(b,a,am_a);

plot(am);
figure
plot(am_a_f);

%Moving average filter
a=1;
b(1:100)=1/100;
am_f=filter(b,a,am);
%------------------------------------------
ar=1.0;
fr=6000;


ref_s1=ar*sin(2*pi*fr*t);

ref_s2=ar*cos(2*pi*fr*t);

comb1=am.*ref_s1;
comb2=am.*ref_s2;

comb1_f=filter(b,a,comb1);
comb2_f=filter(b,a,comb2);

amp=sqrt(comb1_f.*comb1_f+comb2_f.*comb2_f);
figure(3)
plot(abs(fft(comb1)));
phase=atan(comb1/comb2);

