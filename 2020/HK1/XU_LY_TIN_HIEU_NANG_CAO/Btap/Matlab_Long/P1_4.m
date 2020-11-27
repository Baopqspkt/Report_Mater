n=0:50;
f=0.08;
phase=90;
a=2.5;
arg=2*pi*f*n-phase;
x=a*cos(arg);
clf;
stem(n,x);
axis([0 50 -3 3]);
grid;
xlabel('Chi so thoi gian n'); ylabel('Bien do');
title('Day tin hieu sin');
axis;

