%phát m?t dãy xung ??n v?
clf;
%T?o m?t vector t? -10 ??n 10
n=-10:10;
%Phát ra dãy xung ??n v?
d=[ones(1,3) 1 1 1 1 1 1 1 ones(1,11)];
%V? dãy xung ??n v?
stem(n,d);
xlabel('Chi so thoi gian n');
ylabel('Bien do');
title('Day xung don vi');
axis([-10 10 0 4]);