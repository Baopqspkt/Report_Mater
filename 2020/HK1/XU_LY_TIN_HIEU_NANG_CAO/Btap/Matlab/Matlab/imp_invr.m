function [b,a] = imp_invr(c,d,T)
%Bi?n ??i b?t bi?n xung t? m?ch l?c t??ng t? sang s?
%----------------------------------------------------
[R,p,k] = residue(c,d);
P = exp(p*T);
[b,a]= residuez(R,P,k);
b=real(b'); a=real(a');
end

