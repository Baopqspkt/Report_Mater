% Ch??ng tr�nh P5_1

% T�nh ?�p ?ng t?n s? c?a h? th?ng LTI

clf;

% T�nh c�c m?u t?n s? c?a ?�p ?ng t?n s?

w=0:8*pi/511:2*pi;

num = [1/8 1/8 1/8 1/8 1/8 1/8 1/8];den = 1 % [1 -0.6);

h = freqz(num, den, w);

% V? ?�p ?ng t?n s?

figure(1)

subplot(2,1,1)

plot(w/pi,real(h));
grid 

title('Ph?n th?c c?a H(e^{j\omega})')

xlabel('\omega /\pi');

ylabel('Bi�n ??');

subplot(2,1,2)

plot(w/pi,imag(h));grid

title('Ph?n ?o c?a H(e^{j\omega})')
xlabel('\omega /\pi');

ylabel('Bi�n ??');

figure(2)

subplot(2,1,1)

plot(w/pi,abs(h));
grid

title('Ph? bi�n ?? |H(e^{j\omega})|')

xlabel('\omega /\pi');

ylabel('Bi�n ??');

subplot(2,1,2)

plot(w/pi,angle(h));

grid 

title('Pho pha arg[H(e^{j\omega})]')

xlabel('\omega /\pi');

ylabel('Pha do b?ng radians');

%T�nh v� v? ?�p ?ng xung ??n v?

figure(3)

h=impz(num,den, 30);

subplot(2,1,2);

stem(h);
grid

xlabel('Ch? s? th?i gian'); ylabel('Bi�n ??');

title('?�p ?ng xung ??n v?');

% T�nh v� v? gi?n do diem cuc ?i?m kh�ng c?a h? th?ng

subplot(2,1,1)

zplane(num,den);

title('Gi?n ?? ?i?m c?c/?i?m kh�ng');