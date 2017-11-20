%Script file: initialize.m
%
%Purpose:
%This script initializes for sensitivity and uncertainty analysis.
%
%Author: Jin Li
%Date: November 18, 2017

load('temp.mat','fileName');
workdir=pwd;
indexdir='/home/jli80/SerpentSensitivityDataProcessOctaveLinux/indexm';
tempdir=[workdir,'/',fileName,'_temp'];
picturedir=[workdir,'/',fileName,'_picture'];
% check whether sens.m input file exist
if ~exist([workdir,'/',fileName,'_sens.m'],'file')
    error(['File "',fileName,'" does not exist!']);
end
% make temporary directory
if ~exist(tempdir,'dir')
    mkdir(tempdir);
end
% make picture directory
if ~exist(picturedir,'dir')
    mkdir(picturedir);
end
run([workdir,'/',fileName,'_sens.m']);

%
[allCommaraNuclideName,allCommaraNuclideZA]=textread([indexdir,'/commaraNuclide.index'],'%s %f');
[commaraReactionName,commaraNuclideName]=textread([indexdir,'/commaraNuclideReaction.index'],'%*d %s %s');

save('temp.mat');
