# Usage (For Linux Users)
## Download 
Download this directory and put it in a directory that you can access, for example, put it in 
"/home/jli80/documents/octave".
## Modify Index Directory
The directory "/indexm" atores necessary index files for the code. You should add its path to "initialize.m".
For example, if "/indexm"'s path is "/home/jli80/documents/octave/SerpentSensitivityDataProcessOctaveLinux/indexm", 
substitute the 11th line of "initialize.m" with
> indexdir='/home/jli80/documents/octave/SerpentSensitivityDataProcessOctaveLinux/indexm'
## Addpath
Make sure these .m files are included in the search path of your Octave.  
- For command line users, you can use following command to set searching path:
> addpath('/home/jli80/documents/octave/SerpentSensitivityDataProcessOctaveLinux');  
> savepath('~/.octaverc');  

The second command will create a configure file of Octave.  
For more details, please refer to Octave help: <https://www.gnu.org/software/octave/doc/interpreter/Manipulating-the-Load-Path.html>

## Process Data!
### Make sure your Octave is in correct folder
Open Octave and go to the folder of the sensitivity data file(s) you want to process. You can use "cd" in Octave command line 
to do this. For example, if you want to process "core_2d_boc_sens.m", which is on Desktop, use following command in Octave:
> cd '/home/jli80/desktop';  
  
Or if you use GUI, you can use "file browser" of GUI Octave to go to the folder.
### Process Data
Use following command in Octave command line window to process sensitivity data:
> serpentSensitivityDataProcess('sensitivity_data_file_name');  
  
"sensitivity_data_file_name" is the name of sensitivity data file but without "\_sens.m". For example, if you want to process 
"core_2d_boc_sens.m", use the following command:
> serpentSensitivityDataProcess('core_2d_boc');  
