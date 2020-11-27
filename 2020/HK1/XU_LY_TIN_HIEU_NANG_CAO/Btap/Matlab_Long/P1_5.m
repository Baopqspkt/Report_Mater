clf;
R=100;
d=0.5*(rand(R,1)-0.5);
m=0:R-1;
s=2*m.*(0.9.^m);
x=s+d';
figure(1);
subplot(2,1,1);
plot(m,d','r-',m,s,'g--',m,x,'b-.');
xlabel('Chi so thoi gian n'); ylabel('Bien do');
legend('d[n]','s[n]','x[n]');
x1=[0 0 x]; x2=[0 x 0]; x3=[x 0 0];
y=(x1+x2+x3)/3;
subplot(2,1,2);
plot(m,y(2:R+1),'r-',m,s,'g--');
legend('y[n]','s[n]');
xlabel('Chi so thoi gian n'); ylabel('Bien do');
figure(2);
subplot(2,1,1);
plot(m,d','r-',m,s,'g--',m,x,'b-.');
xlabel('Chi so thoi gian n'); ylabel('Bien do');
legend('d[n]','s[n]','x[n]');
y1=[0 0 0 x]; y2=[0 0 x 0]; y3=[0 x 0 0]; y4=[x 0 0 0];
y=(y1+y2+y3+y4)/4;
subplot(2,1,2);
plot(m,y(2:R+1),'r-',m,s,'g--');
legend('y[n]','s[n]');
xlabel('Chi so thoi gian n'); ylabel('Bien do');