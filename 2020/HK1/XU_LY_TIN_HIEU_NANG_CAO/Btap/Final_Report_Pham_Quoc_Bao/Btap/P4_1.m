clf;
clc;
w=-4*pi:8*pi/511:4*pi;
num=[2.5 0.97];
den=[1 -0.55];
x=freqz(num,den,w);
subplot(2,1,1);
plot(w/pi,real(x));
grid
subplot(2,1,2);
plot(w/pi,imag(x));
grid
pause
subplot(2,1,1);
plot(w/pi,abs(x));
grid
subplot(2,1,2);
plot(w/pi,angle(x));
grid