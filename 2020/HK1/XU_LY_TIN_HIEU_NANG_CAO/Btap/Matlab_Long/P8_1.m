clc;
clf;
b=[0.954965,-1.1226287,0.964965];
a=[1,-1.1226287,0.90993];
[H,w]=freqz(b,a,100);
magH=abs(H); phaH=angle(H);
subplot(1,2,1); plot(w/pi,magH); grid; ylabel('Bien do');
title('Dap ung bien do');
subplot(1,2,2); plot(w/pi,phaH/pi); grid; xlabel('Tan so don vi pi');
title('Dap ung pha');

