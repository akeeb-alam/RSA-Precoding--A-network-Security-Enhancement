function mcm = cryptme(Me,Ne,en)
en=dec2bin(en);
ke = 65535;
ce  = Me;
cfe = 1;
cfe=mod(ce*cfe,Ne);
for i=ke-1:-1:1
    ce = mod(ce*ce,Ne);
    j=k-i+1;
     if en(j)==1
         cfe=mod(ce*cfe,Ne);
     end
end
mcm=cfe;