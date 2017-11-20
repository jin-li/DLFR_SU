function ni=getNuclideIndex(commara_nuclide_name)
%Script file: serpentSensitivityDataProcess.m
%
%Purpose:
%This function is used to return the index in sens.m of a commaraNuclideName.
%If it does not exsit, return 0.
%commaraNuclideName is nuclide name in commara, for example, 'H1'.
%
%Author: Jin Li
%Date: November 18, 2017

load('temp.mat','SENS_N_ZAI','SENS_ZAI_LIST');
ni=0;
this_zai=whichNuclide(commara_nuclide_name);
for j=1:SENS_N_ZAI
    if SENS_ZAI_LIST(j)==this_zai
        ni=j;%ni is nuclide index in sens.m
        break;
    end
end           
