clc;
clf;
N =28;
M=40;
% Phát ra dy x[n]
x=[ones(1,N)];
%Tính DFT M ?i?m;
X=fft(x,M);
% V? dãy x[n] và X[k]
t = 0:1:N-1; 
stem(t,x)
title('day x[n]')
xlabel('chi so thoi gian n'); ylabel('Bien do')
subplot(2,1,1)
k=0:1:M-1;
stem(k,abs(X))
title('Bien do cua DFT X[k]')
xlabel('chi so tan so k'); ylabel( 'Bien do');
subplot(2,1,2)
stem(k,angle(X))
title('Pha cua DFT X[k]')
xlabel('chi so tan so k'); ylabel('Pha cua X[k]')