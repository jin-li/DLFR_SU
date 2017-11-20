%Script file: arrangeSensitivity.m
%
%Purpose:
%This script arranges SERPENT sensitivity data.
%
%Author: Jin Li
%Date: November 18, 2017

for i=1:471
    %riTemp stores current reaction index in sens.m
    riTemp=getReactionIndex(commaraReactionName(i));
    %niTemp stores current nuclide index in sens.m
    niTemp=getNuclideIndex(commaraNuclideName(i));
    
    if riTemp==0||niTemp==0
        sens_nr(i,:)=zeros(1,33);
    else
        sens_nr(i,:)=ADJ_PERT_KEFF_SENS(1,niTemp,riTemp,:,1);
        %sens_nr(i,:)=reshape(sens_nr(i,:),[1,33]);
    end
end
sens_nr=fliplr(sens_nr);

sensitivity=zeros(1,471*33);
for i=1:471
    sensitivity(1,(i-1)*33+1:i*33)=sens_nr(i,:);
end