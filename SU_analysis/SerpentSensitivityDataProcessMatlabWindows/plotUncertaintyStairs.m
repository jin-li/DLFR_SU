for i=1:33
    ene(1,i)=1000000*SENS_E(1,35-i);
end

figure(2);
hold on
for i=1:5
    stairs(ene,unc_mx(i,:),'LineWidth',1.5);
    unc_legendstr(1,i)=cellstr([cell2mat(commaraRowNuclide(unc_contrib_sort_indexi(i))),'-',cell2mat(commaraRowReaction(unc_contrib_sort_indexi(i))),' & ',cell2mat(commaraRowNuclide(unc_contrib_sort_indexi(i))),'-',cell2mat(commaraRowReaction(unc_contrib_sort_indexi(i)))]);
end
for i=6:10
    stairs(ene,unc_mx(i,:),'--','LineWidth',1.5);
    unc_legendstr(1,i)=cellstr([cell2mat(commaraRowNuclide(unc_contrib_sort_indexi(i))),'-',cell2mat(commaraRowReaction(unc_contrib_sort_indexi(i))),' & ',cell2mat(commaraRowNuclide(unc_contrib_sort_indexi(i))),'-',cell2mat(commaraRowReaction(unc_contrib_sort_indexi(i)))]);
end

xlabel('Energy(eV)','FontSize',10);
ylabel('Contribution to total uncertainty', 'FontSize', 10);
title('Components of keff uncertainty in LFR ','FontSize',14);
xlim([1, 19600000]);
legend(unc_legendstr,'location','northwest');
set(gca,'xscale','log');
set(gcf,'Position',get(0,'ScreenSize'));
hold off
saveas(gca,[picturedir,'\uncertaintyStairs.jpg']);