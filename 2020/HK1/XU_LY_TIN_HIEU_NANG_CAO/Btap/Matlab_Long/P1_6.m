clf;
n=0:500;
m=0.2; fc=0.9; fl=0.06;
xc=sin(2*pi*fc*n);
xl=sin(2*pi*fl*n);
y=(1+m*xl).*xc;
stem(n,y);
grid