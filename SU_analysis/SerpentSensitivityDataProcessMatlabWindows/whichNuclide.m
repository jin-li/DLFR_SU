function zaNumber=whichNuclide(ncld)
%Script file: serpentSensitivityDataProcess.m
%
%Purpose:
%This script is used to judge which nuclear data is pertubed.
%
%ncld is nuclide name in commara, for example, 'H1'.
%
%Author: Jin Li
%Date: November 8, 2017

load('temp.mat','allCommaraNuclideName','allCommaraNuclideZA');
zaNumber=0;
for i=1:110
    %commaraNuclideName is the first column of commaraNuclide.index
    if length(char(ncld))==length(char(allCommaraNuclideName(i)))&&all(char(ncld)==char(allCommaraNuclideName(i)))
        %commaraNuclideZA is the second column of commaraNuclide.index
        zaNumber=allCommaraNuclideZA(i);
        break;
    end
end