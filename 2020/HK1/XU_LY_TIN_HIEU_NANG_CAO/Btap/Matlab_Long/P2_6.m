clc;
clf;
num=[1 -0.8];
den=[1 1.5 0.9];          
N=200;
h=impz(num,den,N+1);
parsum=0;
for k=1:N+1
    parsum=parsum+abs(h(k));
    if abs(h(k))<10^(-6), break, end
end
n=0:N;
stem(n,h);
xlabel('Chi so thoi gian n'); ylabel('Bien do');
title('Dap ung xung don vi'); 
disp('Value='); disp(abs(h(k)));