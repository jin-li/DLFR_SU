# Serpent Sensitivity Data Process Program
Created on September 14, 2017, by LI Jin.  

## 1.Introduction
This program is used to process output sensitivity data file ([input file name]_sens.m) generated by SERPENT.
This is an instruction of this program and source code.  

To use this program, MATLAB should be installed on your computer. This program use MATALB engine to do calculation.
### 1.1 Set Up MATLAB Engine & Environment
Find your MATLAB install directory, which is "C:\Program Files\MATLAB" by default.  
In this directory, there should be one sub-directory, named after the version of the MATLAB you installed. For example, it is "R2016a" if you installed "MATLAB R2016a" on your computer.  
  
Under directory "C:\Program Files\MATLAB\R2016a", there are several sub-directories, including "extern".  
Under directory "C:\Program Files\MATLAB\R2016a\extern", there are several sub-directories, including "lib" and "include".  
  
Check system environment, if there's no environment variable "LIB" and "INCLUDE", create them respectively.  
Add "C:\Program Files\MATLAB\R2016a\extern\lib" into system environment variable "LIB";  
Add "C:\Program Files\MATLAB\R2016a\extern\include" into system environment variable "INCLUDE".  
  
Check whether these path are in environment variable "Path":  
- C:\Program Files\MATLAB\R2016a\bin
- C:\Program Files\MATLAB\R2016a\bin\win64  
If not, add them in "Path"  
### 1.2 Set Up Compiler Environment
When using Visual Studio compiler, some settings are needed to be changed to use MATLAB engine.  

## 2.How to Use the Executable File
If you want to use the executable program (SerpentSensitivityDataProcess.exe) directly, make sure the SERPENT sensitivity output file ([input file name]_sens.m) is in the same directory.  

SerpentSensitivityDataProcess.exe should be used in command line. The syntax is:  
- SerpentSensitivityDataProcess.exe [input file name]
To be noted, [input file name] doesn't include "_sens.m". For example, if you want to do S/U analysis for file "dlfr_assm_boci_sens.m", the command is:
- SerpentSensitivityDataProcess.exe dlfr_assm_boci