clc;
clf;
N=28;
num=[0.97 -0.4 -0.35 0.002];
den=[1 0.97 -0.46 -0.62];
h=impz(num,den,N);
stem(h);
