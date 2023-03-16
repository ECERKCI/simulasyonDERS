clc 
clear
a=-2;
b=2;
n=1000;
t=0;
for i=1:n
    u1=rand;
    x1=(b-a)*u1+a;
    u2=rand;
    x2=(b-a)*u2+a;
    if (x1^2)+(x2^2)<=b^2
        t=t+1
    end 
end
ort=t/n
DAlan=16*ort
GAlan=4*pi
