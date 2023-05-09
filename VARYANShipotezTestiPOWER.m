clear
tekrar=10000
n=50
mu=10 %merkezi parametre 
s=4 %standart sapma
ALFA=0.05
j=0;
for s1=4:0.1:10
    j=j+1;
    say=0;
for i=1:tekrar
x=normrnd(mu,s,1,n);

LR(i)=(n-1)*var(x)/s^2;

kLR1=31.7518;
kLR2=70.2224;
if LR(i)<=kLR1| LR(i)>=kLR2
    say=say+1;
end
end
POWER(j)=say/tekrar;
end
POWER;
r=4:0.1:10
plot(r,POWER)
