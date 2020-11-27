clc;
clf;
b=[0.9528,-1.1204,0.9697];
a=[1,-1.1226,0.91];
[H,w]=freqz(b,a,97);
magH=abs(H); phaH=angle(H);
subplot(1,2,1); plot(w/pi,magH); grid; ylabel('Bien do');
title('Dap ung bien do');
subplot(1,2,2); plot(w/pi,phaH/pi); grid; xlabel('Tan so don vi pi');
title('Dap ung pha');

