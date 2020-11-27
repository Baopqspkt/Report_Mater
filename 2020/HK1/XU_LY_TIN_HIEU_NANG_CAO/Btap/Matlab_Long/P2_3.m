clc;
clf;
N=45;
num=[0.9 -0.45 -0.35 0.002];
den=[1 0.71 -0.46 -0.62];
h=impz(num,den,N);
stem(h);
