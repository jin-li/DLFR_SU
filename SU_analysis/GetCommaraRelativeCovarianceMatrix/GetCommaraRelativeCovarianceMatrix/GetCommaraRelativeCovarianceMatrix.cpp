#include <iostream>
#include <sstream>
#include <string>
#include <fstream>
#include <array>
#include <memory>

#include "engine.h"                                                // MATLAB calculating engine

#pragma comment (lib,"libmat.lib")
#pragma comment (lib,"libeng.lib")
#pragma comment (lib,"libmx.lib")

using namespace std;

typedef struct _covarianceMatrixStruct {
	unsigned ifExist = 0;
	unsigned serialNumber=999;
} covarianceMatrixStruct;

static covarianceMatrixStruct commaraMatricesMap[471][471];

std::string cmdExecuteResult(const char* cmd);

void getCommaraMatricesMap();

void getCommaraMatrix();

const string workdir = cmdExecuteResult("cd");
const string indexdir = cmdExecuteResult("cd") + "\\index";

int main()
{
	getCommaraMatricesMap();
	getCommaraMatrix();
	return 0;
}

void getCommaraMatrix()
{
	ofstream makeCommaraCovarianceMatrix(workdir + "\\makeCommaraCovarianceMatrix.m");
	cout << "Generating MATLAB script to arrange COMMARA_2.0 covariance matrix...";

	for (unsigned i = 0; i < 471; i++) {
		makeCommaraCovarianceMatrix << "nuclearData_" << i << "=load(" << "'" << indexdir + "\\nuclearData\\" << i << "');\n";
		//makeCommaraCovarianceMatrix << "nuclearData_" << i << "=load(" << "'D:/Documents/ForLijin/nuclearData/" << i << "');\n";
	}

	makeCommaraCovarianceMatrix << "rcv=zeros(15543,15543);\n";
	for (unsigned i = 0; i < 471; i++) {
		for (unsigned j = 0; j < 471; j++) {
			if (commaraMatricesMap[i][j].ifExist == 1||commaraMatricesMap[i][j].ifExist==2) {
				makeCommaraCovarianceMatrix << "rcv(" << i * 33 + 1 << ":" << (i + 1) * 33 << "," << j * 33 + 1 << ":" << (j + 1) * 33 << ")=load(" << "'" << indexdir + "\\covariancemMatrices\\" << commaraMatricesMap[i][j].serialNumber << "');\n";
				makeCommaraCovarianceMatrix
					<< "for m=1:33\n"
					<< "for n=1:33\n";
				makeCommaraCovarianceMatrix
					<< "rcv(" << i * 33 << "+m," << j * 33 << "+n)=rcv(" << i * 33 << "+m," << j * 33 << "+n)*(nuclearData_" << i << "(m,2)*nuclearData_" << j << "(n,2));\n"
					<< "if isnan(rcv(" << i * 33 << "+m," << j * 33 << "+n))||isinf(rcv(" << i * 33 << "+m," << j * 33 << "+n))\n"
					<< "rcv(" << i * 33 << "+m," << j * 33 << "+n)=0;\n"
					<< "end\n"
					<< "end\n"
					<< "end\n";
			}
			else if (commaraMatricesMap[i][j].ifExist == 3) {
				makeCommaraCovarianceMatrix << "rcv(" << i * 33 + 1 << ":" << (i + 1) * 33 << "," << j * 33 + 1 << ":" << (j + 1) * 33 << ")=(load(" << "'" << indexdir + "\\covariancemMatrices\\" << commaraMatricesMap[i][j].serialNumber << "'))';\n";
				makeCommaraCovarianceMatrix
					<< "for m=1:33\n"
					<< "for n=1:33\n";
				makeCommaraCovarianceMatrix
					<< "rcv(" << i * 33 << "+m," << j * 33 << "+n)=rcv(" << i * 33 << "+m," << j * 33 << "+n)*(nuclearData_" << i << "(m,2)*nuclearData_" << j << "(n,2));\n"
					<< "if isnan(rcv(" << i * 33 << "+m," << j * 33 << "+n))||isinf(rcv(" << i * 33 << "+m," << j * 33 << "+n))\n"
					<< "rcv(" << i * 33 << "+m," << j * 33 << "+n)=0;\n"
					<< "end\n"
					<< "end\n"
					<< "end\n";
			}
		}
	}
	makeCommaraCovarianceMatrix << "save('" << workdir << "\\rcv.mat','rcv');";
	makeCommaraCovarianceMatrix.close();

	cout << "\nSuccessfully generated the MATLAB script to arrange COMMARA_2.0 covariance matrix!\n";

	engine *ep;
	std::cout << "Launching MATLAB R2016a engine...\n";
	if (!(ep = engOpen(NULL))) {
		std::cout << "Can't start MATLAB engine!" << endl;
		return;
	}
	std::cout << "MATLAB R2016a engine was launched successfully!\n";

	if (engEvalString(ep, ("run '" + workdir + "\\makeCommaraCovarianceMatrix.m'").c_str())) {
		cout << "MATLAB engine run '" + workdir + "\\makeCommaraCovarianceMatrix.m' failed!\n";
		return;
	}
	cout << "Successfully generated COMMARA relative covariance matrix!\n";
	engClose(ep);
}

void getCommaraMatricesMap()
{
	ifstream matriceMapFile(indexdir + "\\commaraMatricesMap.index");
	//string matricesMap[4][569];
	unsigned serial, exist, row, column;
	string lineRead;
	stringstream ss;

	if (!matriceMapFile) {
		cout << "Can't open file \"" << indexdir + "\\commaraMatricesMap.index\"!\n";
		return;
	}
	for (unsigned i = 0; i < 569; i++) {
		getline(matriceMapFile, lineRead);
		ss.clear();
		ss << lineRead;
		ss >> serial >> exist >> row >> column;

		if (exist==1) {
			commaraMatricesMap[row][column].ifExist = exist;
			commaraMatricesMap[row][column].serialNumber=serial;
		}
		else if(exist==2) {
			commaraMatricesMap[row][column].ifExist = exist;
			commaraMatricesMap[column][row].ifExist = 3;
			commaraMatricesMap[row][column].serialNumber=serial;
			commaraMatricesMap[column][row].serialNumber=serial;
		}
	}
	matriceMapFile.close();
}

/*------------------------------------------------------------------
This function return console command execute result.
Argument is the command you want to execute.
-------------------------------------------------------------------*/
std::string cmdExecuteResult(const char* cmd)
{
	std::array<char, 256> buffer;
	std::string result;
	std::shared_ptr<FILE> pipe(_popen(cmd, "r"), _pclose);
	if (!pipe) throw std::runtime_error("popen() failed!");
	while (!feof(pipe.get())) {
		if (fgets(buffer.data(), 256, pipe.get()) != NULL)
			result += buffer.data();
	}
	int resultLength = result.length();
	if (result[resultLength - 1] == '\n') {
		result.erase(resultLength - 1);
	}
	return result;
}