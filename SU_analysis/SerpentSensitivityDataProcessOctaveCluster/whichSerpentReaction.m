function serpentReactionName=whichSerpentReaction(rName)
%Script file: whichSerpentReaction.m
%
%Purpose:
%This function return the reaction name in sens.m.
%
%Author: Jin Li
%Date: November 18, 2017
switch char(rName)
    case 'ELASTIC'
        serpentReactionName='ela scatt xs        ';
    case 'INELASTIC'
        serpentReactionName='inl scatt xs        ';
    case 'CAPTURE'
        serpentReactionName='capture xs          ';
    case 'FISSION'
        serpentReactionName='fission xs          ';
    case 'NU'
        serpentReactionName='nubar total         ';
    case 'NxN'
        serpentReactionName='nxn xs              ';
    case 'KHI'
        serpentReactionName='chi total           ';
    case 'P1ELAS'
        serpentReactionName='ela leg mom 1       ';
%     otherwise
%         error('Unknow reaction type!');
end