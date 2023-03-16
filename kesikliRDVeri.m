clc
clear
n=10
for i=1:n
    u=rand;
    if u<=0.5
        x(i)=1;
    elseif u<=0.20
            x(i)=2;
    elseif u<= 0.50
            x(i)=3;
    elseif u<=0.90
            x(i)=4;
    elseif u<=1
            x(i)=5;
    end
end
hist(x,4)
