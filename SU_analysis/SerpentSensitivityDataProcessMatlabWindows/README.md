# Usage (For Windows Users)
## Download 
Download this directory and put it in a directory that you can access, for example, put it in 
"C:\Users\LI Jin\Documents\MATLAB".
## Modify Index Directory
The directory "\indexm" atores necessary index files for the code. You should add its path to "initialize.m".
For example, if "\indexm"'s path is "C:\Users\LI Jin\Documents\MATLAB\SerpentSensitivityDataProcessMatlabWindows\indexm", 
substitute the 11th line of "initialize.m" with
> indexdir='C:\Users\LI Jin\Documents\MATLAB\SerpentSensitivityDataProcessMatlabWindows\indexm'
## Addpath
Make sure these .m files are included in the search path of your Matlab.  
- For GUI users, you can set path by HOME\>Environment\>Set Path\>Add Folder.. and add the path of these .m files, for example,
"C:\Users\LI Jin\Documents\MATLAB\SerpentSensitivityDataProcessMatlabWindows", into your Matlab searching path.
- For command line users, you can use following command to set searching path:
> addpath('C:\Users\LI Jin\Documents\MATLAB\SerpentSensitivityDataProcessMatlabWindows');  
> savepath 'C:\Users\LI Jin\Documents\MATLAB\SerpentSensitivityDataProcessMatlabWindows';  

For more details, please refer to Matlab help: <https://cn.mathworks.com/help/matlab/ref/addpath.html>

## Process Data!
### Make sure your Matlab is in correct folder
Open Matlab and go to the folder of the sensitivity data file(s) you want to process. You can use "cd" in Matlab command line 
to do this. For example, if you want to process "core_2d_boc_sens.m", which is on Desktop, use following command in Matlab:
> cd 'C:\Users\LI Jin\Desktop';  
  
Or if you use GUI, you can click "select a folder" button to go to the folder.
### Process Data
Use following command in Matlab command line window to process sensitivity data:
> serpentSensitivityDataProcess('sensitivity_data_file_name');  
  
"sensitivity_data_file_name" is the name of sensitivity data file but without "\_sens.m". For example, if you want to process 
"core_2d_boc_sens.m", use the following command:
> serpentSensitivityDataProcess('core_2d_boc');  
