clear all;
close all;
recorderObj=audiorecorder;
recordblocking(recorderObj,20);
play(recorderObj);
y=getaudiodata(recorderObj);
plot(y)


