# Summary
After running this code, a file "commaraMatricesMap.index" will be generated. "commaraMatricesMap.index" contains the information that which position the 569 COMMARA-2.0 correlation matrices locates at in the covariance matrix used in "Sandwich Rule".
# Output File
There are 569 lines in filr "commaraMatricesMap.index", corresponding to the 569 correlation matrices obtained from COMMARA-2.0.  
Each line has four columns, referring to the serial number of the correlation matrices, the position ("1" means on diagonal, "2" means off diagonal), the row number and the column number, respectively.
For example, the first line is 
- 1 1 1 1  
which indicates that the matrix with serial number 1 locates at position row 1, column 1, on diagonal.  
As for the serial numbers, user can look them up in index file "commaraMatrix.index". To be noted, the serial number in "commaraMatricesMap.index" starts from 0, while the number in "commaraMatrix.index" starts from 1,
which means the serial number n in "commaraMatricesMap.index" corresponds to the number n+1 in "commaraMatrix.index". For example,
- 1 in first column in file "commaraMatricesMap.index" corresponds to "2 CAPTURE H1 CAPTURE H1",  
hich means the correlation matrix named "1" in directory "index/covarianceMatrices/" is the correlation matrix between "Hydrogen 1 capture cross section" and "Hydrogen 1 capture cross section".

