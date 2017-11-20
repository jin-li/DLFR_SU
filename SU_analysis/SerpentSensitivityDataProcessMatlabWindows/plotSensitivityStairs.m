for i=1:33
    ene(1,i)=1000000*SENS_E(1,35-i);
end
figure(1);
hold on
% store legend string
legendstr=cell(1,10);
for i=1:5
    stairs(ene,sens_mx(i,:),'LineWidth',1.5);
    legendstr(1,i)=cellstr([cell2mat(commaraNuclideName(sens_m_index(i))),'-',cell2mat(commaraReactionName(sens_m_index(i)))]);
end

for i=6:10
    stairs(ene,sens_mx(i,:),'--','LineWidth',1.5);
    legendstr(1,i)=cellstr([cell2mat(commaraNuclideName(sens_m_index(i))),'-',cell2mat(commaraReactionName(sens_m_index(i)))]);
end

xlabel('Energy(eV)', 'FontSize', 10);
ylabel('Sensitivity coefficient', 'FontSize', 10);
title('Sensitivity of keff in LFR','FontSize',14);
xlim([1, 19600000]);
legend(legendstr,'location','northwest');
set(gca,'xscale','log');
set(gcf,'Position',get(0,'ScreenSize'));
hold off
saveas(gca,[picturedir,'\sensitivityStairs.jpg']);