% Bir dakikalık süre içerisinde kuyrukta bekleyen müşteri sayısı
clc
clear
tic
tekrar=10000
maxkms=-1;
for j=1:tekrar
z=0; %müşterinin işleminin bitiş zamanı
kms=0; %kuyrukta bekleyen müşteri sayısı
Lamda = 10;%bir müşterinin işleminin gerçekleştirildiği ortalama süre(saniye olarak)
p=0.25;%herhangi bir saniyede içeri müşteri girmesi olasılığı
k=0; %işlemde müşteri olup olmaması (k 0(işlemde müşteri yok) yada 1(var)olabilir)
for i=1:60 %60, 1 dakikanın saniye ifadesi
   x(i)=binornd(1,p,1,1);
if x(i)==1 %müşteri geldi
if k==0 %işlemde müşteri yok.Kasada müşteri olup olmadığının kontrolü için
   y=floor(exprnd(Lamda));%müşterinin işleminin gerçekleşme süresi
   z=i+y; %müşterin işleminin bitiş zamanı
   k=1;%işlemde müşteri var.Kasa dolu
else 
   kms=kms+1;
end
if i>=z
   kms=kms-1;
   z=i+floor(exprnd(Lamda));
if kms<=-1
   kms=0;
   k=0;
end
end
end
end
   D(j)=kms;%60 saniye sonucunda kuyruktaki müşteri sayısı
end
    ortalamaD=mean(D)
    varyansD=var(D)
    histfit(D,30)
    hist(D,lamda*3)
    toc

