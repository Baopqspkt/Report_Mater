clc;
clf;
n=0:40; a=2; b=3;
x1=cos(2*pi*0.1*n);
x2=cos(2*pi*0.4*n);
x=a*x1+b*x2;
num=[2.2403 2.4908 2.2403];
den=[1 -0.4 0.75];
ic=[0 0];                               %dieu kien ban dau bang 0
y1(n)=filter(num,den,x1,ic);            %tinh y1(n)
y2(n)=filter(num,den,x2,ic);            %tinh y2(n)
y(n)=filter(num,den,x,ic);              %tinh y(n)
yt=a*y1+b*y2;
d=y-yt;                                 %tinh sai so loi ra
%ve tin hieu va sai so
subplot(3,1,1); stem(n,y);
subplot(3,1,2); stem(n,yt); title('');
subplot(3,1,3); stem(n,d); title('tin hieu sai so d');