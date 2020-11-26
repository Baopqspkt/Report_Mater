% Ch??ng trình P5_1

% Tính ?áp ?ng t?n s? c?a h? th?ng LTI

clf;

% Tính các m?u t?n s? c?a ?áp ?ng t?n s?

w=0:8*pi/511:2*pi;

num = [1/8 1/8 1/8 1/8 1/8 1/8 1/8];den = 1 % [1 -0.6);

h = freqz(num, den, w);

% V? ?áp ?ng t?n s?

figure(1)

subplot(2,1,1)

plot(w/pi,real(h));
grid 

title('Ph?n th?c c?a H(e^{j\omega})')

xlabel('\omega /\pi');

ylabel('Biên ??');

subplot(2,1,2)

plot(w/pi,imag(h));grid

title('Ph?n ?o c?a H(e^{j\omega})')
xlabel('\omega /\pi');

ylabel('Biên ??');

figure(2)

subplot(2,1,1)

plot(w/pi,abs(h));
grid

title('Ph? biên ?? |H(e^{j\omega})|')

xlabel('\omega /\pi');

ylabel('Biên ??');

subplot(2,1,2)

plot(w/pi,angle(h));

grid 

title('Pho pha arg[H(e^{j\omega})]')

xlabel('\omega /\pi');

ylabel('Pha do b?ng radians');

%Tính và v? ?áp ?ng xung ??n v?

figure(3)

h=impz(num,den, 30);

subplot(2,1,2);

stem(h);
grid

xlabel('Ch? s? th?i gian'); ylabel('Biên ??');

title('?áp ?ng xung ??n v?');

% Tính và v? gi?n do diem cuc ?i?m không c?a h? th?ng

subplot(2,1,1)

zplane(num,den);

title('Gi?n ?? ?i?m c?c/?i?m không');