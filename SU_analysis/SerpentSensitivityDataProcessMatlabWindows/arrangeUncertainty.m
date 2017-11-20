% if on diagnal, value of isDiag is 1, if off diagnal, value of diag is 2
[isDiag,rowIndex,columnIndex]=textread([indexdir,'\commaraMatricesMap.index'],'%*u %u %u %u',-1);
% transfer double to integer
isDiag=int16(isDiag);
rowIndex=int16(rowIndex);
columnIndex=int16(columnIndex);

for i=1:569
    if isDiag(i)==1
        unc_nr_contrib(i,:)=sens_nr(rowIndex(i),:).*((rcv((rowIndex(i)*33-32):rowIndex(i)*33,(columnIndex(i)*33-32):columnIndex(i)*33)*sens_nr(columnIndex(i),:)')');
    elseif isDiag(i)==2
        unc_nr_contrib(i,:)=2*sens_nr(rowIndex(i),:).*((rcv((rowIndex(i)*33-32):rowIndex(i)*33,(columnIndex(i)*33-32):columnIndex(i)*33)*sens_nr(columnIndex(i),:)')');
    end
end
        
count_nr=1;
count_unc=1;
for i=1:471
    for j=1:33
        unc_nr_m(count_nr,j)=unc_nr(1,count_unc);
        unc_nr_compon(count_nr,j)=unc_orig(1,count_unc); % uncertainty component
        count_unc=count_unc+1;
    end
    count_nr=count_nr+1;
end
