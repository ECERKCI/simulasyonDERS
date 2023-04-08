clc
clear
n=1000
for j=1:n
for i=1:1000
u=rand;
v=2*rand;
y=u*2*(1/2);
(2/pi)*sqrt(v*(2-v));
if y<=(2/pi)*sqrt(v*(2-v))
  x(j)=v;
  break
end 
end
end
hist(x,20)