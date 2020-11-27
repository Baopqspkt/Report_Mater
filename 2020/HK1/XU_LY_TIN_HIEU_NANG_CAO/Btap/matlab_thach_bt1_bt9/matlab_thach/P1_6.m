clf;
n=0:528;
m=0.28; fc=0.79; fl=0.06;
xc=sin(2*pi*fc*n);
xl=sin(2*pi*fl*n);
y=(1+m*xl).*xc;
stem(n,y);
grid