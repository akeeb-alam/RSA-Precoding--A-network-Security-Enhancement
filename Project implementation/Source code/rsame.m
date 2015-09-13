%used mfile (rsame,initializeme,initialize,crypt,cryptme,dec2bin,)


clc;
disp('RSA Algorithm improvement');
clear all; close all;
M = input('\nEnter the message: ','s');
x=length(M);
%prime generation
p=1;
q=1;
while p==q || state1==state2 ||r==s ||state3==state4 ||p==r||q==s
state1=randi(1000);
state2=randi(1000);
state3=randi(1000);
state4=randi(1000);
if state1~=state2 || state3~=state4||state1~=state4||state2~=state3
p= randseed(state1,1,1,30,80);
q= randseed(state2,1,1,30,80);
r= randseed(state3,1,1,30,100);
s= randseed(state4,1,1,30,100);
end
end
 %prime generated
 [Pp,Pz,de,en] = intializeme(r,s);
 [Pk,Phi,d,e] = intialize(p,q);

c=0;
for j= 1:x
    for i=0:255
        if strcmp(M(j),char(i))
            c(j)=i;
        end
    end
end
disp('ASCII Code of the entered Message:');
disp(c); 
fprintf('\n..........Sender Encryption..............\n');
% % %Encryption
for j= 1:x
    sender_cipher_1(j)= crypt(c(j),Pp,en); 
        if sender_cipher_1(j)>255 
       agcipher(j)=mod(sender_cipher_1(j),255);%again cipher
       else
       agcipher(j)=sender_cipher_1(j)+32;
        end
        if agcipher(j)<32
            agcipher(j)=agcipher(j)+32;
        end
    sender_cipher_2(j)= crypt(sender_cipher_1(j),Pk,e);
    
    if sender_cipher_2(j)>255 
       ag1cipher(j)=mod(sender_cipher_2(j),255);%again cipher
   else
       ag1cipher(j)=sender_cipher_2(j)+32;
    end
   if ag1cipher(j)<32
            ag1cipher(j)=ag1cipher(j)+32;
        end
end
disp('first (public key) encrypted ASCII of the entered Message:');
disp(sender_cipher_1);
disp(['Encrypted on pulic key  Message is: ' agcipher]);

disp('First encrypt+ RSA ASCII of the  Message:');
disp(sender_cipher_2);
disp(['Encrypted Improved RSA Message is: ' ag1cipher]);
% % %Server Decryption
server_cipher=sender_cipher_2;

disp('------------Server decryption----------------');
disp(['Server received Data ' ag1cipher]);
disp(' Received cipher ASCII: ');
disp(server_cipher);
disp(['The private1 key (d) is: ' num2str(d)]);
disp(['The private2 key (de) is: ' num2str(de)]);
for j= 1:x  
 server_cipher_1(j)= crypt(server_cipher(j),Pk,d); 
  if server_cipher_1(j)>255 
       ag2cipher(j)=mod(server_cipher_1(j),255);%again cipher
   else
       ag2cipher(j)=server_cipher_1(j)+32;
    end
   if ag2cipher(j)<32
            ag2cipher(j)=ag2cipher(j)+32;
        end
 server_cipher_2(j) = crypt(server_cipher_1(j),Pp,de);
end
disp(' First decrypted ASCII of Message:');
disp(server_cipher_1);
disp(['Decrypted Message is: ' ag2cipher]);
disp(' Decrypted ASCII of Message:');
disp(server_cipher_2);
disp(['Decrypted Message is: ' server_cipher_2]);

receiver_cipher=server_cipher;
fprintf('\n--------Receiver decryption---------------\n');
disp(['Receiver received Data (Cipher text)' ag1cipher]);
disp(' Received cipher ASCII: ');
disp(receiver_cipher);
a= '0';
trail=3;
while a =='0'&&  trail<4
    fprintf('trail %d remain, \n Enter The private1 (Decryption)key:', trail);
rd = input('');
    if (d==rd)
        a='1';
        trail=4;
    for j= 1:x
        receiver_cipher_1(j)= crypt(receiver_cipher(j),Pk,d); 
        if receiver_cipher_1(j)>255 
       re2cipher(j)=mod(receiver_cipher_1(j),255);%again cipher
       else
       re2cipher(j)=receiver_cipher_1(j)+32;
        end
        if re2cipher(j)<32
            re2cipher(j)=re2cipher(j)+32;
        end
     end
    disp('Decrypted ASCII of Message:');
    disp(receiver_cipher_1);
    disp(['Rsa Decrypted Message is: ' re2cipher]);
    a_1='0';
    trail_1=3;
    while  a_1=='0' && trail_1 <4
         fprintf('trail %d remain, \n Enter The private 2 (Decryption)key:', trail_1);
            rde=input('');
            if de==rde
                a_1='1';
                trail_1=4;
                for j= 1:x
                receiver_cipher_2(j) =crypt(receiver_cipher_1(j),Pp,de);
                end
                fprintf('\nRSA improved decrypted (Orginal) Message ASCII\n');
               disp(receiver_cipher_2);
               disp([' RSA improved Decrypted(Orginal) Message is: ' receiver_cipher_2]);
            else 
                a_1='0';
                disp('Private2 key missmatch......\n Try again ');  
                trail_1=trail_1-1;
                if trail_1==0
                    return;
                end
            end
    end
   else 
   a='0';
  disp('Private1 key missmatch......\n Try again ');  
  trail=trail-1;
  if trail == 0
      return;
  end
    end  
end
    