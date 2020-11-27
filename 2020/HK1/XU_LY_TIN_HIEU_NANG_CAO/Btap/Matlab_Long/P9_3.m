clc;
clf;
format long
fedge=[750 1000];
mval=[1 0];
dev=[0.0559 0.01];
F=4000;
[N,fpts,mag,wt]=remezord(fedge,mval,dev,F);
b=remez(N,fpts,mag,wt);
disp('He so FIR'); disp(b);
[h,w]=freqz(b,1,256);
subplot(1,2,1);
plot(w/pi,20*log10(abs(h))); grid;
title('Bien do mach loc FIR thong thap voi N=28');
xlabel('\omega/\pi'); ylabel('Gain,dB');
N1=110;
fpts1=[0 0.25 0.3 0.5 0.55 1];
mag1=[0 0 1 1 0 0];
wt1=[1 1 1];
b1=remez(N1,fpts1,mag1,wt1);
disp(b1);
[h1,w1]=freqz(b1,1,256);
subplot(1,2,2);
plot(w/pi,20*log10(abs(h1))); grid;
title('Bien do mach loc FIR thong dai voi N=110');
xlabel('\omega/\pi'); ylabel('Gain,dB');