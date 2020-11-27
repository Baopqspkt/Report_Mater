clf;
n=0:100;
s1=cos(2*pi*0.2*n);
s2=cos(2*pi*0.4*n);
x=s1+s2;
%Thuc hien loc trung binh cong
M=input('Chieu dai cua mach loc=');
num=ones(1,M);
y=filter(num,1,x)/M;
%hien thi cac tin hieu vao ra
subplot(2,2,1); plot(n,s1); axis([0 100 -2 2]);
subplot(2,2,2); plot(n,s2); axis([0 100 -2 2]);
subplot(2,2,3); plot(n,x); axis([0 100 -2 2]);
subplot(2,2,4); plot(n,y); axis([0 100 -2 2]);