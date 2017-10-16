all:SerpentSensitivityDataProcess.exe

# compile
read.obj:read.cpp
	cl /EHsc -c read.cpp -D_X64 -DWIN64 -D_CONSOLE /I"C:\Program Files\MATLAB\R2016a\extern\include\" -Iread.h -Iengine.h
SerpentSensitivityDataProcess.obj:SerpentSensitivityDataProcess.cpp read.obj
	cl /EHsc -c -D_X64 -DWIN64 -D_CONSOLE SerpentSensitivityDataProcess.cpp

# link
SerpentSensitivityDataProcess.exe:read.obj SerpentSensitivityDataProcess.obj
	link /subsystem:console /out:SerpentSensitivityDataProcess.exe read.obj SerpentSensitivityDataProcess.obj /libpath:"C:\Program Files\MATLAB\R2016a\extern\lib\win64\microsoft\" 

clean:
	if exist *.obj del *.obj
