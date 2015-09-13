clc;
disp('RSA time_me complexity');
clear all; close all;
M = input('\nEnter the message: ','s');
ellapse_time_me_total=0;
for i=1:1:5
    ellapse_time_me=0;
    
    t=0;
t = cputime;
x=length(M);
p=1;
q=1;
while p==q || state1==state2 ||r==s ||state3==state4 ||p==r||q==s
state1=randi(1000);
state2=randi(1000);
state3=randi(500);
state4=randi(500);
if state1~=state2 || state3~=state4||state1~=state4||state2~=state3
p= randseed(state1,1,1,30,100);
q= randseed(state2,1,1,30,100);
r= randseed(state3,1,1,30,100);
s= randseed(state4,1,1,30,100);
end
end
 [Pp,Pz,de,en] = intializetime(r,s);
 [Pk,Phi,d,e] = intializetime(p,q);
c=0;
for j= 1:x
    for i=0:12000
        if strcmp(M(j),char(i))
            c(j)=i;
        end
    end
end 
for j= 1:x
    precipher(j)= crypt(c(j),Pp,en); 
    cipher(j)= crypt(precipher(j),Pk,e); 
end
for j= 1:x  
 message(j)= crypt(cipher(j),Pk,d); 
 decipher(j) = crypt(message(j),Pp,de);
end
ellapse_time_me = cputime-t
ellapse_time_me_total=ellapse_time_me_total+ellapse_time_me;
end
AVG_ellapse_time=ellapse_time_me_total/5

    