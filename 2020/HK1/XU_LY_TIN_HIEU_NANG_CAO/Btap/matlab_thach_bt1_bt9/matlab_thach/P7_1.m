clc;
clf;
t = 0:0.0004:1;
f=28;
xa = cos(2* pi*f*t);
subplot(2,1,1)
plot(t,xa);
grid
xlabel('thoi gian, msec');
ylabel('Bien do'); 
title('Tin hieu thoi gian lien tuc x_{a}(t)'); 
axis([0 1 -1.2 1.2])
subplot(2,1,2);
T=0.00595;
n= 0:T:1;
xs = cos(2*pi*f*n);
k=0:length(n)-1;
stem(k,xs);grid;
xlabel('Chi so thoi gian n'); ylabel('Bien do');
title('Tin hieu thoi gian roi rac x[n]'); 
axis([0 (length(n)-1) -1.2 1.2])