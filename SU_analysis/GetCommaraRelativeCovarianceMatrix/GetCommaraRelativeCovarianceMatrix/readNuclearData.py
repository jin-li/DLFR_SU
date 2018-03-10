#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os

# read index file
indexf=open("NuclearData.index")
import re
cntIndexLine=0
indexm=[]
while 1:
    indexl=indexf.readline()
    indexm.append(re.split(r'[\t\s]\s*',indexl.strip()))
    cntIndexLine+=1
    if not indexl:
        break
indexf.close()
print(indexm)

def getMT(reaction):
    if reaction=="ELASTIC":
        return "MF3/MT2"
    elif reaction=="INELASTIC":
        return "MF3/MT4"
    elif reaction=="NxN":
        return "MF3/MT16"
    elif reaction=="CAPTURE":
        return "MF3/MT102"
    elif reaction=="FISSION":
        return "MF3/MT18"
    elif reaction=="NU":
        return "MF1/MT456"
    elif reaction=="KHI":
        return "MF3/MT18"
    elif reaction=="P1ELAS":
        return "MF4/MT251"
    else:
        return false


k=0
while k<471:
    cntRead=k
    k+=1
    fileName=indexm[cntRead][3]+".sg33"
    dataf=open(fileName)
    dataO=open(indexm[cntRead][0],'w')
    while 1:
        datal=dataf.readline()
        if(datal.find("Y="+indexm[cntRead][3]+"/"+getMT(indexm[cntRead][1])+")")!=-1):
            i=0
            while i<5:
                datal=dataf.readline()
                i+=1
            j=0
            while j<33:
                datal=dataf.readline()
                dataO.write(datal[58:])
                j+=1
            dataf.close()
            dataO.close()
            break
        if not datal:
            break

"""
f=open("001_H_001.sg33")
out=open("001",'w')

cntline=0
cs="Y=001_H_001/MF3/MT1)"

while 1:
    line=f.readline()
    cntline=cntline+1
    if(line.find(cs)!=-1):
        i=0
        while i<5:
            line=f.readline()
            i+=1
        j=0
        while j<33:
            line=f.readline()
            out.write(line[58:])
            print(line[58:])
            j+=1
        print(cntline)
    if not line:
        break
f.close()
"""
