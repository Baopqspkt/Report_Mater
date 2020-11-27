clc;
clf;
N =input('chieu dai N cua day =');
M=input ('chieu dai M cua X[k] =');
% Ph�t ra d�y x[n]
x=[ones(1,N)];
%T�nh DFT M ?i?m;
X=fft(x,M);
% V? d�y x[n] v� X[k]
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