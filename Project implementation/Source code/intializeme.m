function [Pp,Pz,de,en] = intializeme(r,s)
Pp=r*s;
Pz=(r-1)*(s-1);
x=2;en=1;
while x > 1
    en=en+1;
    x=gcd(Pz,en);
end
i=1;
r=1;
while r > 0
    k=(Pz*i)+1;
    r=rem(k,en);
    i=i+1;
end
de=k/en;
%disp(['The public key (en) is: ' num2str(en)]);
%disp(['The private key (de)is: ' num2str(de)]);
