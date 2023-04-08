clc
clear
n=1000
for j=1:n
for i=1:1000
u=rand;
v=exprnd(1);
g=exp(-v);
a=sqrt(2/pi)*exp(1/2);
y=a*u*g;
if y<=sqrt(2/pi)*exp(-(v^2)/2)
    x(j)=v;
end
end
end
hist(x,50)