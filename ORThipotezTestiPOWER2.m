clear
tekrar=10000
n=50
mu=10 %merkezi parametre 
s=4 %standart sapma
ALFA=0.05
j=0;
for mu1=10:0.1:15
    j=j+1;
    say=0;
for i=1:tekrar
x=normrnd(mu,s,1,n);

ort=mean(x);
LR(i)=(ort-mu)/(sqrt(var(x)/n));

kLR1=-2.0081;
kLR2=2.0250;
if LR(i)<=kLR1| LR(i)>=kLR2
    say=say+1;
end
end
POWER(j)=say/tekrar;
end
POWER;
r=10:0.1:15
plot(r,POWER)

