% Chirped signals

fs=1000; % Sampling frequency in Hz
t = 0:0.001:2;                 
ylin = chirp(t,0,1,150);    
yq = chirp(t,100,1,200,'q'); 

subplot(211), plot(t,ylin);
title('Linear Chirp');
subplot(212), plot(t,yq);
title('Quadratic Chirp');

figure 

subplot(211),spectrogram(ylin,256,250,256,1E3,'yaxis');
title('Linear Chirp')
subplot(212),spectrogram(yq,128,120,128,1E3,'yaxis');
title('Quadratic Chirp')
