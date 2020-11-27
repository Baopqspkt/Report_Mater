%phát m?t dãy xung ??n v?
clf;
%T?o m?t vector t? -10 ??n 10
n=-10:10;
%Phát ra dãy xung ??n v?
d=[zeros(1,3) 1 0 0 1 1 0 1 zeros(1,5) ones(1,4) 0 0];
%V? dãy xung ??n v?
stem(n,d);
xlabel('Chi so thoi gian n');
ylabel('Bien do');
title('Day xung don vi');
axis([-10 10 0 1.2]);