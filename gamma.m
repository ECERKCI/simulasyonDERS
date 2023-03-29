clc 
clear
k1=5;
k2=7;
L1=10;
L2=20;
n=10;
for i=1:k1
    u=rand;
    x1(i)=-L1*log(1-u);
end
y1=sum(x1);
for i=1:k2
    u=rand;
    x2(i)=-L2*log(1-u);
end
y2=sum(x2);
y1
y2

