clf;

w=-4*pi:8*pi/511:4*pi; 

num=[2 1];

den=[1 -0.6];

h=freqz(num,den,w); %Ve DTFT

subplot(2,1,1)

plot(w/pi,real(h));

grid

title('Ph?n th?c c?a X(e^{j\omega})')

xlabel('\omega /\pi');
ylabel('Biên ??');

subplot(2,1,2)

plot(w/pi,imag(h));

grid

title('Ph?n ?o c?a (e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Biên ??');

figure(2)

subplot(2,1,1)

plot(w/pi, abs(h));

grid

title('Ph? biên ?? |X(e^{j\omega})]');
xlabel('\omega /\pi');
ylabel('Biên ??');

subplot(2,1,2)

plot(w/pi,angle(h));
grid

title('Ph? pha arg[X(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Pha do b?ng radians');
