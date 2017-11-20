for i = 1:569
    unc_nreg_contrib(i, 1) = sum(unc_nr_contrib(i, :))/totalUncertainty;
    unc_nr_contrib_frac(i,:)=unc_nr_contrib(i,:)/totalUncertainty;
    unc_nreg_contrib_abs(i, 1) = abs(unc_nreg_contrib(i, 1));
end
[unc_contrib_sort, unc_contrib_sort_index] = sort(unc_nreg_contrib_abs, 'descend');

unc_contrib_sort_indexi = int16(unc_contrib_sort_index);
unc_recdf4 = fopen([tempdir,'\uncertaintyContribSort.result'], 'wt');

[commaraRowReaction,commaraRowNuclide,commaraColumnReaction,commaraColumnNuclide]=textread([indexdir,'\commaraMatrix.index'],'%*d %s %s %s %s',-1);

fprintf(unc_recdf4,'No. Index            Parameter pair       Contribution to uncertainty\n');
for i = 1:569
    unc_mx(i, :) = unc_nr_contrib_frac(unc_contrib_sort_index(i, 1), :);% store uncertainty contributed to total
    fprintf(unc_recdf4, '%-3d %-7d %-35s %12g\n',i, unc_contrib_sort_indexi(i, 1),([cell2mat(commaraRowNuclide(unc_contrib_sort_indexi(i))),'-',cell2mat(commaraRowReaction(unc_contrib_sort_indexi(i))),' & ',cell2mat(commaraRowNuclide(unc_contrib_sort_indexi(i))),'-',cell2mat(commaraRowReaction(unc_contrib_sort_indexi(i)))]), unc_nreg_contrib(unc_contrib_sort_indexi(i,1), 1));
end
fclose(unc_recdf4);
for i = 1:471
    unc_max(i, 1) = abs(sum(unc_nr_compon(i, :))); % sort data by contribution to total uncertainty
end

[unc_sort, unc_index] = sort(unc_max, 'descend');
for j = 1:471
    unc_m_index(j, 1) = unc_index(j, 1);
    unc_nreg_sort(j,1)=sum(unc_nr_m(unc_index(j,1),:)); % energy group integrated conservative relative uncertainty
    unc_nreg_consv(j,1)=sum(unc_nr_m(unc_index(j,1),:))*totalUncertainty; % energy group integrated conservative uncertainty
    unc_nreg_compon(j,1)=sum(unc_nr_compon(unc_index(j,:),:))/totalUncertainty; % energy group integrated uncertainty components
    unc_nreg_contrib(j,1)=sum(unc_nr_contrib(unc_index(j,:),:)); % energy group integrated uncertainty contributed to total
end

unc_m_indexi = int16(unc_m_index);

unc_recdf2 = fopen([tempdir,'\ConsvRelaUncertaintySort.result'], 'wt');
unc_recdf3 = fopen([tempdir,'\uncertaintyComponSort.result'], 'wt');
unc_recdf5 = fopen([tempdir,'\ConsvUncertaintySort.result'], 'wt');
unc_recdf6 = fopen([tempdir,'\totalUncertainty.result'], 'wt');

fprintf(unc_recdf2, 'No.  Index    Parameter   Conservative relative uncertainty\n');
fprintf(unc_recdf3, 'No.  Index    Parameter   Uncertainty component\n');
fprintf(unc_recdf5, 'No.  Index    Parameter   Conservative uncertainty\n');
for i = 1:471
    fprintf(unc_recdf2, '%-3d %-7d  %-17s %12g\n',i, unc_m_indexi(i, 1),([cell2mat(commaraNuclideName(unc_m_indexi(i, 1))),'-',cell2mat(commaraReactionName(unc_m_indexi(i, 1)))]), unc_nreg_sort(i,1));
    fprintf(unc_recdf3, '%-3d %-7d  %-17s %12g\n',i, unc_m_indexi(i, 1),([cell2mat(commaraNuclideName(unc_m_indexi(i, 1))),'-',cell2mat(commaraReactionName(unc_m_indexi(i, 1)))]), unc_nreg_compon(i,1));
    fprintf(unc_recdf5, '%-3d %-7d  %-17s %12g\n',i, unc_m_indexi(i, 1),([cell2mat(commaraNuclideName(unc_m_indexi(i, 1))),'-',cell2mat(commaraReactionName(unc_m_indexi(i, 1)))]), unc_nreg_consv(i,1));
end
fprintf(unc_recdf6, '%12g\n', sqrt(totalUncertainty));
fclose(unc_recdf2);
fclose(unc_recdf3);
fclose(unc_recdf5);
fclose(unc_recdf6);
