clear all; close all;

load('mgh009m.mat');
plot(val);
for i=1:length(val)
    if val(i)<350
        y(i)=0.0;
    else 
        y(i)=val(i);
    end
end

hold on;
plot(y,'r');

d(1:length(val))=0.0;
count=0.0;

for i=1:length(val)-1;
    
  d(i)=y(i)-y(i+1);
 
end

for i=1:length(val)-1;
    
  if d(i)<0.0 && d(i+1)>0
      
      count=count+1
      %RR(count)=t(i);
      end
  
end