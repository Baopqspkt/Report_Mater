n=0:97;
f=0.04;
phase=90;
a=2.8;
arg=2*pi*f*n-phase;
x=a*cos(arg);
clf;
stem(n,x);
axis([0 50 -3 3]);
grid;
xlabel('Chi so thoi gian n'); ylabel('Bien do');
title('Day tin hieu sin');
axis;

