for i=1:471
    sens_max(i,1)=abs(sum(sens_nr(i,:))); % sort by energy integrated absolote value
end
% sort sensitivity data by descend order
% sens_index is the index order, which index is the same as that of
% commaraNuclideName and of commaraReactionName
[sens_sort, sens_index] = sort(sens_max, 'descend');
for j = 1:471
    sens_mx(j, :) = sens_nr(sens_index(j, 1), :);
    sens_nreg_sort(j, 1) = sum(sens_mx(j,:));
    sens_m_index(j, 1) = sens_index(j, 1);
end
sens_m_indexi = int16(sens_m_index);
recdf2 = fopen([tempdir,'\sensitivitySort.result'], 'wt');
fprintf(recdf2, 'No. Index     Parameter   Sensitivity(Energy bin normalized)\n');
for i = 1:471
    fprintf(recdf2, '%-3d %-7d %-17s %12g\n',i, sens_m_indexi(i, 1),[cell2mat(commaraNuclideName(sens_m_indexi(i, 1))),'-',cell2mat(commaraReactionName(sens_m_indexi(i, 1)))],sens_nreg_sort(i,1));
end
fclose(recdf2);
