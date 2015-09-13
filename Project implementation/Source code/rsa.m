clc;
disp('RSA Algorithm');
clear all; close all;
%prime generation
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
 %prime generated
[Pk,Phi,d,e] = intialize(p,q);
M = input('\nEnter the message: ','s');
x=length(M);
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
% % %Encryption
for j= 1:x
   sender_cipher(j)= crypt(c(j),Pk,e); 
   if sender_cipher(j)>255 
       agcipher(j)=rem(sender_cipher(j),255);%again cipher
       if agcipher(j)<32
           agcipher(j)=agcipher(j)+32;
       end
   else
       agcipher(j)=sender_cipher(j)+32;
   end
end
disp('Cipher ASCII of the entered Message:');
disp(sender_cipher);
disp(['Encrypted Message is: ' agcipher]);
server_cipher=sender_cipher;
% % %Server Decryption
disp('---------Server decryption------');
disp(['Server received Data:  ' agcipher]);
fprintf('\n ASCII of the received data');
disp(server_cipher);
disp(['The public key (e) is: ' num2str(e)]);
disp(['The private key (d) is: ' num2str(d)]);
for j= 1:x
   server_cipher_1(j)= crypt(server_cipher(j),Pk,d); 
   if server_cipher_1(j)>255 
       server_agcipher(j)=rem(server_cipher_1(j),255);%again cipher
       if server_agcipher(j)<32
           server_agcipher(j)=server_agcipher(j)+32;
       end
   else
       server_agcipher(j)=server_cipher_1(j)+32;
   end
end
disp(' Decrypted ASCII of Message:');
disp(server_cipher_1);
disp(['Decrypted Message is: ' server_cipher_1]);
receiver_cipher=server_cipher;
a= '0';
trail=3;
disp('------Receiver Decryption---------');
while a =='0'&&  trail<4
  fprintf('\nTrail %d remain ', trail);
rd = input('Enter The private (Decryption)key:');
    if d==rd
        a='1';
        trail=4;
    for j= 1:x
        receiver_cipher_1(j)= crypt(receiver_cipher(j),Pk,d); 
    end
     disp('Decrypted ASCII of Message:');
    disp(receiver_cipher_1);
    disp(['Decrypted Message is: ' receiver_cipher_1]);
   else 
   a='0';
  fprintf('Private key miss match\n Try again...... \n ');  
  trail=trail-1;
  if trail==0
      return;
  end 
    end
end
    