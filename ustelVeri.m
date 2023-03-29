clc 
clear
L=1;
n=10000
for i=1:n
    u=rand;
    x(i)=-L*log(1-u);
end
