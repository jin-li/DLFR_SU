% load relative covariance matrix
rcvStruct=load([indexdir,'\rcv.mat']);
rcvCell=struct2cell(rcvStruct);
rcv=cell2mat(rcvCell);

totalUncertainty = sensitivity*rcv*sensitivity';
save('temp.mat','totalUncertainty');
rcv_sens = rcv*sensitivity';
unc_orig = sensitivity.*rcv_sens';
for i = 1:15543
    unc_cons(1, i) = 2 * unc_orig(1, i) - sensitivity(1, i)*rcv(i, i)*sensitivity(1, i);
end
unc_nr = unc_cons./totalUncertainty;   % uncertainty fraction of each nuclide - reaction - energy
