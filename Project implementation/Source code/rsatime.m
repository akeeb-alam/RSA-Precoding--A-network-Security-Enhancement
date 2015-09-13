clc;
disp('RSA time complexity');
clear all; close all;
M = input('\nEnter the message: ','s');
 ellapse_time_total=0;
for i=1:1:5
     ellapse_time=0;
    t=0;
t = cputime;
x=length(M);
state1=1;
state2=1;
p=1;
q=1;
while state1==state2|| p==q
state1=randi(1000);
state2=randi(1000);
if state1~=state2
p= randseed(state1,1,1,30,100);
q= randseed(state2,1,1,30,100);
end
end
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
   cipher(j)= crypt(c(j),Pk,e); 
end
for j= 1:x
   message(j)= crypt(cipher(j),Pk,d); 
end
 ellapse_time = cputime-t

 ellapse_time_total=ellapse_time_total+ellapse_time;
end
AVG_ellapse_time=ellapse_time_total/5
 
 

    