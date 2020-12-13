clc;
clf;
w=0:4*pi/255:pi;
num = [1/6 1/6 1/6 1/6 1/6 1/6 1/6];den =  0.97;
h = freqz(num, den, w);
figure(1)
subplot(2,1,1)
plot(w/pi,real(h));
grid 
title('Phan thuc cua H(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Bien do');
subplot(2,1,2)
plot(w/pi,imag(h));grid
title('Phan ao cua H(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Bien do');
figure(2)
subplot(2,1,1)
plot(w/pi,abs(h));
grid
title('Pho bien do |H(e^{j\omega})|')
xlabel('\omega /\pi');
ylabel('Bien do');
subplot(2,1,2)
plot(w/pi,angle(h));
grid 
title('Pho pha arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Pha do bang radians');
figure(3)
h=impz(num,den, 30);
subplot(2,1,2);
stem(h);
grid
xlabel('Chi so thoi gian'); ylabel('Bien do');
title('Dap ung xung don vi');
subplot(2,1,1)
zplane(num,den);
title('Gian do diem cuc/diem khong');