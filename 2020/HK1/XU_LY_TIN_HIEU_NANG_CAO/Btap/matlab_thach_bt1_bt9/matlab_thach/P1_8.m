n=0:228;
a=pi/3/154;
b=0;
arg=a*n.*n+b*n;
x=cos(arg);
clf;
stem(n,x);
axis([0 200 -1.5 1.5]);

