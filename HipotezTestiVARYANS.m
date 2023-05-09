clc
clear
tekrar=20000
n=50
mu=10 %merkezi parametre 
s=4 %standart sapma
ALFA=0.05
for i=1:tekrar
x=normrnd(mu,s,1,n);

%ort=mean(x);
LR(i)=(n-1)*var(x)/s^2;

end
LR=sort(LR);

kikarek1=chi2inv(ALFA/2,n-1)
kLR1=LR(floor(tekrar*(ALFA/2)))

kikarek2=chi2inv(1-(ALFA/2),n-1)
kLR2=LR(floor(tekrar*(1-(ALFA/2))))

hist(LR,100)