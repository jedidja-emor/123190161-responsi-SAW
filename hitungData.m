function [ranking] = hitungData()
dataset = readtable('DATA RUMAH.xlsx');
x = table2array(dataset(:,3:8)); %input data berdasarkan kriteria
k=[0,1,1,1,1,1];%nilai atribut, dimana 0= atribut biaya &1= atribut keuntungan
w=[0.30,0.20,0.23,0.10,0.07,0.10];% bobot untuk masing-masing kriteria



%tahapan 1. normalisasi matriks
[m n]=size (x); %matriks m x n dengan ukuran sebanyak variabel x (input)
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong
for j=1:n
    if k(j)==1 %statement untuk kriteria dengan atribut keuntungan
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
    end
end

%tahapan kedua, proses perangkingan
for i=1:m
 V(i)= sum(w.*R(i,:));
end
%pengurutan array

[ b, ix ] = sort( V(:), 'descend' );
%pencarian Index
    [ rr, cc ] = ind2sub( size(V), ix(1:20) );
    ranking = [dataset( cc(1):cc(1) , 1:8)]
    for ii = 2 : 20
       ranking = [ranking;dataset( cc(ii):cc(ii) , 1:8)];
    end
end
