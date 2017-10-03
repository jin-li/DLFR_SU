#include <iostream>
#include <string>
#include <sstream>
#include <fstream>
#include <iomanip>
#include <array>
#include <memory>

using namespace std;

std::string cmdExecuteResult(const char* cmd);

void getCommaraMatricesMap();

int main()
{
	getCommaraMatricesMap();
	return 0;
}

void getCommaraMatricesMap()
{
	string workdir = cmdExecuteResult("cd");
	string indexdir = cmdExecuteResult("cd") + "\\index";

	string NRindex[3][471];
	string matricesIndex[5][569];
	string lineRead;
	stringstream ss;

	ifstream NRindexFile(indexdir + "\\commaraNuclideReaction.index");
	if (!NRindexFile) {
		cout << "Can't open file \"" << indexdir + "\\commaraNuclideReaction.index" << "\"!\n";
		return;
	}
	for (unsigned i = 0; i < 471; i++) {
		getline(NRindexFile, lineRead);
		ss.clear();
		ss << lineRead;
		for (unsigned j = 0; j < 3; j++) ss >> NRindex[j][i];
	}
	NRindexFile.close();

	ifstream matricesIndexFile(indexdir + "\\commaraMatrix.index");
	if (!matricesIndexFile) {
		cout << "Can't open file \"" << indexdir + "\\commaraMatrix.index" << "\"!\n";
		return;
	}
	for (unsigned i = 0; i < 569; i++) {
		getline(matricesIndexFile, lineRead);
		ss.clear();
		ss << lineRead;
		for (unsigned j = 0; j < 5; j++) ss >> matricesIndex[j][i];
	}

	ofstream commaraMatricesMap(workdir + "\\commaraMatricesMap.index");
	unsigned row = 0, column = 0;
	for (unsigned i = 0; i < 569; i++) {
		for (unsigned j = 0; j < 471; j++) {
			if (matricesIndex[1][i] == NRindex[1][j] && matricesIndex[2][i] == NRindex[2][j]) {
				row = j;
				break;
			}
		}
		for (unsigned j = 0; j < 471; j++) {
			if (matricesIndex[3][i] == NRindex[1][j] && matricesIndex[4][i] == NRindex[2][j]) {
				column = j;
				break;
			}
		}
		if (row == column) {
			commaraMatricesMap << setw(3) << i << " " << setw(2) << " 1 " << setw(3) << row << " " << setw(4) << column << endl;
		}
		else {
			commaraMatricesMap << setw(3) << i << " " << setw(2) << " 2 " << setw(3) << row << " " << setw(4) << column << endl;
		}
	}
	commaraMatricesMap.close();

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