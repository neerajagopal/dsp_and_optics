f1=50;
f2=5000;
fs=20000;
t=0:1/fs:1;
y1=sin(2*pi*f1*t);
y2=sin(2*pi*f2*t);
y=y1.*y2;
y_a=abs(y);
figure(1)
plot(t,y_a);
[b,a]=butter(10,200/10000,'low');
y_f=filter(b,a,y_a);
plot(y(1:200));
plot(y(1:800));






