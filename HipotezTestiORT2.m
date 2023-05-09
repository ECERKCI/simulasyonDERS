clc 
clear
tekrar=10000
n=50
mu=10
s=4
ALFA=0.05
for i=1:tekrar
x=normrnd(mu,s,1,n);
%x=exprnd(mu,1,n);
ort=mean(x);
LR(i)=(ort-mu)/(sqrt(var(x)/n));

end
LR=sort(LR);
tk1=tinv(ALFA/2,n-1)
kLR1=LR(floor(tekrar*(ALFA/2)))

tk2=tinv(1-(ALFA/2),n-1)
kLR1=LR(floor(tekrar*(1-(ALFA/2))))

hist(LR,100)
