clc
clear
n=1000
for j=1:n
for i=1:1000
u=rand;
v=trnd(1,1,1);
a=sqrt((2*pi)/exp(1));
g=1/(pi*(1+v^2));
y=a*u*g;
if y<=(1/(sqrt(2*pi)))*exp(-(v^2)/2)
   x(j)=v;
   break
 end
 end
end
hist(x,20)