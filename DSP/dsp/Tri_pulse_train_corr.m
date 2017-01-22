clear all; close all;


t = 0 : 1/1e3 : 2; 
r=0.5*randn(1,length(t));
d1 = 0.2 : 0.4 : 2;           
y1 = pulstran(t,d1,'tripuls',0.2,0)+r;

d2 = 0.2 : 0.4 : 0.5;          
y2 = pulstran(t,d2,'tripuls',0.2,0);
plot(t,y1,t,y2);

xlabel 'Time (s)', ylabel Waveform

[acorr lag]=xcorr(y1,y2,'coeff');

% peak detection

d(1:length(t))=0.0;
count=0.0;

for i=1:length(t)-1;
    
  d(i)=y1(i)-y1(i+1);
 
end

for i=1:length(t)-1;
    
  if d(i)<0.0 && d(i+1)>0
      
      count=count+1;
      RR(count)=t(i);
      end
  
end
  
figure;

plot(lag, acorr);
