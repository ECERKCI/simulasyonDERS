clc 
clear
tic
tekrar=10000
maxkms=-1;
for j=1:tekrar
    z1=0; % 1. müşterinin işleminin bitiş zamanı
    z2=0; % 2. müşterinin işleminin bitiş zamanı
    kms=0;%kuyrukta bekleyen müşteri sayısı
    Lamda1=8;%birici kasada bir müşterinin işleminin gerçekleştirildiği ortalama süre (saniye olarak)
    Lamda2=12;%ikinci kasada bir müşterinin işleminin gerçekleştirildiği ortalama süre (saniye olarak)
    p=0.4;%herhangi bir saniede içeri müşteri girmesi olasılığı
    k1=0;%işlemde müşteri olup olmaması(k1 0(işlemde müşteri yok) yada 1(var)olabilir)
    k2=0;%ikinci kasada müşteri olup olmaması(k2 0(işlemde müşteri yok) yada 1(var)olabilir)
    for i=1:60 %60, 1 dakikanın saniye olarak ifade edilmesi
        harcama1=0;
        harcama2=0;
        harcama(i)=0;
        x(i)=binornd(1,p,1,1)
     if x(i)==1 %müşteri geldi
         if k1==0 %işlemde müşteri yok
             k1=1; %işlemde müşteri var
             y1=exprnd(Lamda1);%müşterinin işleminin gerçekleşme süresi
             z1=i+y1;%birinci kasadaki müşterinin işleminin bitiş zamanı
         else
             if k2==0
                 k2=1;
                 y2=exprnd(Lamda2);%müşterinin işleminin gerçekleşme süresi
                 z2=i+y2;%ikinci kasadaki müşterinin işleminin bitiş zamanı
             else
                 kms=kms+1;
             end
         end
     end
     if i>=z1
         harcama1=normrnd(200,50,1,1); %1. kasada müşterinin yaptığı harcama miktarı
         harcama(i)=harcama1+harcama(i);
         kms=kms-1;
         z1=i+exprnd(Lamda1);
         if kms<=-1
             kms=0;
             k1=0;
         end
     end
     if i>=22
         harcama2=normrnd(200,50,1,1);%2. kasada müşterinin yaptığı harcama miktarı
         harcama(i)=harcama(i)+harcama2;
         kms=kms-1;
         z2=i+exprnd(Lamda2);
         if kms<=-1
             kms=0;
             k2=0;
         end
     end
    end
    Top(j)=sum(x)-kms;%1 dakikalık süre içerisinde servis alan toplam müşteri sayısı
    T(j)=sum(harcama);%1 dakikalık süre içerisinde müşterilerin harcadığı toplam para miktarı
    D(j)=kms;%60 saniye sonunda kuyruktaki müşteri sayısı
end
Topx;
mean(Topx)

T;
ortalamaT=mean(T)
varyans=var(T)
figure(1)
hist(T)

D;
ortalamaD=mean(D)
varyansD=var(D)
figure(2)
hist(D)
toc



