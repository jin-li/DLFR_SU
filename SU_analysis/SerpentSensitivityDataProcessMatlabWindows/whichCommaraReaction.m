function reaction=whichCommaraReaction(r)
%Script file: serpentSensitivityDataProcess.m
%
%Purpose:
%This script is used to judge which reaction data is pertubed.
%
%Author: Jin Li
%Date: November 1, 2017
switch r
    case 'ela scatt xs        '
        reaction='ELASTIC';
    case 'inl scatt xs        '
        reaction='INELASTIC';
    case 'capture xs          '
        reaction='CAPTURE';
    case 'fission xs          '
        reaction='FISSION';
    case 'nubar total         '
        reaction='NU';
    case 'nxn xs              '
        reaction='NxN';
    case 'chi total           '
        reaction='KHI';
    case 'ela leg mom 1       '
        reaction='P1ELAS';
%     otherwise
%         error('Unknow reaction type!');
end
            