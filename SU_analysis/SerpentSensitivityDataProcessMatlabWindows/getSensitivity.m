function getSensitivity()

[reac,nucl]=textread([workdir,'\indexm\commaraNuclideReaction.index'],'%*d %s %s',-1);
for i=1:471
    for j=1:8%8 is reaction number in commara2.0
        for k=1:SENS_N_PERT
            if reac(i)==whichReaction(SENS_PERT_LIST(k)
                for ii=1:SENS_N_ZAI
                    nucl(i)==