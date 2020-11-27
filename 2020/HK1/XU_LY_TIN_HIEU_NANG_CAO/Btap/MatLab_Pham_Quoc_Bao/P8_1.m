clc;
clf;
b=[0.9720,-1.12200697,0.969798];
a=[1,-1.1275,0.9099];
[H,w]=freqz(b,a,97);
magH=abs(H); phaH=angle(H);
subplot(1,2,1); plot(w/pi,magH); grid; ylabel('Bien do');
title('Dap ung bien do');
subplot(1,2,2); plot(w/pi,phaH/pi); grid; xlabel('Tan so don vi pi');
title('Dap ung pha');

