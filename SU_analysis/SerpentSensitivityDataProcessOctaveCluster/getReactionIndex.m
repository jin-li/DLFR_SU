function ri=getReactionIndex(commaraReactionName)
%Script file: commaraReactionName.m
%
%Purpose:
%This function is used to return the index in sens.m of a commaraReactionName.
%If it does not exsit, return 0.
%commaraNuclideName is nuclide name in commara, for example, 'ELASTIC'.
%
%Author: Jin Li
%Date: November 18, 2017
load('temp.mat','SENS_N_PERT','SENS_PERT_LIST');
ri=0;
this_reaction_name=whichSerpentReaction(commaraReactionName);
for i=1:SENS_N_PERT
    if all(SENS_PERT_LIST(i,:)==this_reaction_name);
        ri=i;
        break;
    end
end