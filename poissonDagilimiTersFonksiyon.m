clc 
clear 
L=10;
F=exp(-L);
u=rand;
for i=1:inf
    if u<=F
        x=(i-1);
        break
    end
    f=(L^i)*exp(-L)/factorial(i);
    F=F+f;
end 
x