clc
clear 
m=2;
x(1)=23;
n=10;
for i=2:n
    if (x(i-1)^2)/(10^m)<=10^(m-1)
        x(i)=floor((x(i-1)^2)/10^(m-1));
    else
        x(i)=mod(floor((x(i-1)^2)/10^(m-1)),10^m)
    end 
end
u=x/(10^m)
rand(1,10)