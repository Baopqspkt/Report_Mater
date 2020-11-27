s10=0.3; s20=0.5; a=0.9;
y1=zeros(1,50); y2=y1;
for n=1:50;
    y1(n)=a*(s10+s20)-s20; y2(n)=a*(s10+s20)+s10;
    s10=y1(n); s20=y2(n);
end
k=1:1:50;
figure(1);
stem(k-1,y1/abs(y1(7))); axis([0 50 -1.1 1.1]);
xlabel('Chi so thoi gian n'); ylabel('Bien do');
figure(1);
stem(k-1,y2/abs(y2(3))); axis([0 50 -1.1 1.1]);
xlabel('Chi so thoi gian n'); ylabel('Bien do');