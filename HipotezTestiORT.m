clc 
clear 
tekrar=10000
n=100
mu=10 %merkezi parametre
s=4  %standart sapma
ALFA=0.05
for i=1:tekrar
x= normrnd(mu,s,1,n); %parametreleri mu=10,sigma=16 olan normal dağılımdan n çaplı örnek
    
ort=mean(x);
LR(i)=(ort-mu)/(s/sqrt(n));%varyansın BİLİNİYOR olması koşulu altında mu=10 hipotezinin testi için Likelihood Ratio(LR) yoluyla eld edilmiş test istatistiği

end
LR=sort(LR);
zk1=norminv(ALFA/2,0.1)
kLR1=LR(floor(tekrar*(ALFA/2))) %alt kritik değer 

zk2=norminv(1-(ALFA/2),0.1)
kLR1=LR(floor(tekrar*(1-(ALFA/2))))%üst kritik değer 

hist(LR,100)