#include "read.h"
#include "matrix.h"
#include <fstream>
#include <sstream>    //string stream
#include <iomanip>    //format control
#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>

using namespace std;

const std::string workDirectory = cmdExecuteResult("cd");
const std::string indexDirectory = cmdExecuteResult("cd") + "\\index";

static covarianceMatrixStruct commaraMatrixStruct[471][471];

void getMatricesMap()
{
	ifstream commaraMatricesMapFile(indexDirectory + "\\commaraMatricesMap.index");
	string lineRead;
	unsigned serial, exist, row, column;
	stringstream ss;
	if (!commaraMatricesMapFile) {
		cout << "Can't open file \"" << indexDirectory + "\\commaraMatricesMap.index\"!\n";
		return;
	}
	for (unsigned i = 0; i < 569; i++) {
		getline(commaraMatricesMapFile, lineRead);
		ss.clear();
		ss << lineRead;
		ss >> serial >> exist >> row >> column;
		if (exist == 1) {
			commaraMatrixStruct[row][column].ifExist = exist;
			commaraMatrixStruct[row][column].serialNumber = serial;
		}
		else if (exist == 2) {
			commaraMatrixStruct[row][column].ifExist = exist;
			commaraMatrixStruct[column][row].ifExist = 3;
			commaraMatrixStruct[row][column].serialNumber = serial;
			commaraMatrixStruct[column][row].serialNumber = serial;
		}
	}

}

void generateSerpentNuclidePre(const string sensitivityFileName)
{
	engine *ep;
	if (!(ep = engOpen(NULL))) {
		cout << "Can't start MATLAB engine!" << endl;
		return;
	}
	//engEvalString(ep, "run 'C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\dlfr6_pert_sens.m'");
	if (engEvalString(ep, ("run '" + workDirectory + "\\" + sensitivityFileName + "_sens.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_sens.m' failed!" << endl;
		return;
	}
	mxArray *serpentNuclideNumber = mxCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
	serpentNuclideNumber = engGetVariable(ep, "SENS_N_ZAI");
	double *serpentNuclideNumberN;
	serpentNuclideNumberN = mxGetPr(serpentNuclideNumber);
	//cout << *serpentNuclideNumberN;
	mxArray *serpentNuclideList = mxCreateNumericMatrix(int(*serpentNuclideNumberN), 1, mxINT16_CLASS, mxREAL);
	serpentNuclideList = engGetVariable(ep, "SENS_ZAI_LIST");
	double *serpentNuclideListN;
	serpentNuclideListN = mxGetPr(serpentNuclideList);

	//ofstream serpentNuclideListPre("serpentNuclideList.pre");
	ofstream serpentNuclideListPre(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentNuclideList.pre");
	for (int i = 0; i<int(*serpentNuclideNumberN)-1; i++) {
		serpentNuclideListN++;
		serpentNuclideListPre << int(*serpentNuclideListN) << "  " << i + 2 << "\n";
	}
	serpentNuclideListPre.close();
	mxDestroyArray(serpentNuclideNumber);
	mxDestroyArray(serpentNuclideList);


	mxArray *serpentReactionNumber = mxCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
	serpentReactionNumber = engGetVariable(ep, "SENS_N_PERT");
	double *serpentReactionNumberD;
	serpentReactionNumberD = mxGetPr(serpentReactionNumber);
	int serpentReactionNumberN = int(*serpentReactionNumberD);
	
	
	//cout << *serpentReactionNumberN;
	//mxArray *serpentReactionList = mxCreateString("                    ");

	//char *serpentReactionListN;
	char **serpentReactionListC;
	serpentReactionListC = new char *[serpentReactionNumberN];

	for (int i = 0; i < serpentReactionNumberN; i++) {
		serpentReactionListC[i] = new char[20];
		memset(serpentReactionListC[i], '0', 20*sizeof(char));
	}

	//const char **cMatrix;

	
	mxArray *test = engGetVariable(ep, "SENS_PERT_LIST");
	char str[281];
	mxGetString(test, str, 281);
	ofstream serpentReactionPerturbedPre(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionPerturbed.pre");
	for (int i = 0; i < 14; i++) {
		for (int j = 0; j < 20; j++) {
			serpentReactionListC[i][j] = str[i + 14 * j];
			serpentReactionPerturbedPre << serpentReactionListC[i][j];
		}
		serpentReactionPerturbedPre << endl;
		//string out = serpentReactionListC[i];
		//cout << out << endl;
	}
	serpentReactionPerturbedPre.close();

//	cout << str;
	/*
	mxArray **serpentReactionList;
	for (int i = 0; i < serpentReactionNumberN; i++) {
		//serpentReactionList[i]= mxCreateCharMatrixFromStrings(14, serpentReactionListC);
	}
	serpentReactionList[0] = engGetVariable(ep, "SENS_PERT_LIST");
	for (int i = 0; i < serpentReactionNumberN; i++) {
		mxGetString(serpentReactionList[i],*serpentReactionListC,21);
	}

	//ofstream serpentReactionListPre("serpentReactionList.pre");
	ofstream serpentReactionListPre(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionList.pre");
	for (int i = 0; i<serpentReactionNumberN-1; i++) {
		serpentReactionListN++;
		serpentReactionListPre << int(*serpentReactionListN) << "  " << i + 2 << "\n";
	}
	serpentReactionListPre.close();
	*/
	engClose(ep);

}

void generateSerpentNuclideIndex(const string sensitivityFileName)
{
	generateSerpentNuclidePre(sensitivityFileName);
	//ifstream inF("C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\index\\commaraNuclide.index");
	ifstream inF(indexDirectory + "\\commaraNuclide.index");
	string matrixIndex[3][110];
	string lineRead;
	stringstream ss1;
	if (!inF) {
		cout << "Can't open file \"" << indexDirectory + "\\commaraNuclide.index\"!" << endl;
		return;
	}
	for (unsigned i = 0; i<110; i++) {
		getline(inF, lineRead);
		ss1 << lineRead;
		for (unsigned j = 0; j < 3; j++) ss1 >> matrixIndex[j][i];
		ss1.clear();
	}
	inF.close();

	engine *ep;
	if (!(ep = engOpen(NULL))) {
		cout << "Can't start MATLAB engine!" << endl;
		return;
	}
	//engEvalString(ep, "run 'C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\dlfr6_pert_sens.m'");
	if (engEvalString(ep, ("run '" + workDirectory + "\\" + sensitivityFileName + "_sens.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_sens.m' failed!" << endl;
		return;
	}
	mxArray *serpentNuclideNumber = mxCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
	serpentNuclideNumber = engGetVariable(ep, "SENS_N_ZAI");
	double *serpentNuclideNumberN;
	serpentNuclideNumberN = mxGetPr(serpentNuclideNumber);
	int serpentNuclideNumberInt = int(*serpentNuclideNumberN) - 1;
	engClose(ep);

	//ifstream inF2("serpentNuclideList.pre");
	ifstream inF2(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentNuclideList.pre");
	//string matrixIndex2[2][144];
	string **matrixIndex2;
	matrixIndex2 = new string *[2];
	if (!inF2) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\serpentNuclideList.pre\"!" << endl;
		return;
	}
	for (int i = 0; i < 2; i++) {
		matrixIndex2[i] = new string[serpentNuclideNumberInt];
		//memset(matrixIndex2[i], 0, 2 * sizeof(string));
	}
	string lineRead2;
	stringstream ss2;
	for (int i = 0; i<serpentNuclideNumberInt; i++) {
		getline(inF2, lineRead2);
		ss2 << lineRead2;
		for (unsigned j = 0; j < 2; j++) {
			ss2 >> matrixIndex2[j][i];
			//cout << matrixIndex2[j][i] << endl;
		}
		ss2.clear();
	}
	inF2.close();

	//ofstream outF("C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\index\\serpentNuclide.index");
	ofstream outF(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentNuclide.index");
	//unsigned commaraNuclideNumber = 0;
	for (int i = 0; i < serpentNuclideNumberInt; i++) {
		bool doesNuclideExist = false;
		for (unsigned j = 0; j < 110; j++) {
			if (matrixIndex[2][j] == matrixIndex2[0][i]) {
				doesNuclideExist = true;
				outF << matrixIndex[0][j] << "  " << matrixIndex[2][j] << "  " << matrixIndex2[1][i] << "\n";
				break;
			}
		}
		if (!doesNuclideExist) {
			outF << "NONE" << "  " << matrixIndex2[0][i] << "  " << matrixIndex2[1][i] << "\n";
		}
	}
	outF.close();
	for (int i = 0; i < 2; i++) {
		delete[] matrixIndex2[i];
	}
	delete[] matrixIndex2;
}

unsigned int getSerpentReactionNumber(const string sensitivityFileName, const string _reaction_)
{
	/*
	if (_reaction_ == "P1ELAS") {
		system("pause");
	}
	*/
	ifstream serpentReactionPertIndex(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionPerturbed.index");
	if (!serpentReactionPertIndex) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionPerturbed.index\"!" << endl;
	}
	unsigned int reactionNumber;
	string reactionName;
	string lineRead;
	stringstream ss;
	while (!serpentReactionPertIndex.eof()) {
		getline(serpentReactionPertIndex, lineRead);
		ss.clear();
		ss << lineRead;
		ss >> reactionName;
		ss >> reactionNumber;
		ss.clear();
		if (reactionName == _reaction_) {
			serpentReactionPertIndex.close();
			return reactionNumber;
		}
	}
	cout << "Reaction \"" << _reaction_ << "\" not found!\n";
	serpentReactionPertIndex.close();
	return 0;

	/*
	if (_reaction_ == "ELASTIC") {
		return 2;
	}
	else if (_reaction_ == "INELASTIC") {
		return 4;
	}
	else if (_reaction_ == "CAPTURE") {
		return 5;
	}
	else if (_reaction_ == "FISSION") {
		return 6;
	}
	else if (_reaction_ == "NU") {
		return 8;
	}
	else if (_reaction_ == "NxN") {
		return 7;
	}
	else if (_reaction_ == "KHI") {
		return 11;
	}
	else if (_reaction_ == "P1ELAS") {
		return 14;
	}
	*/
}

void generateSerpentReactionPertubedIndex(const string sensitivityFileName)
{
	string elastic   = "ela scatt xs        ";
	string inelastic = "inl scatt xs        ";
	string capture   = "capture xs          ";
	string fission   = "fission xs          ";
	string nu        = "nubar total         ";
	string nxn       = "nxn xs              ";
	string khi       = "chi total           ";
	string p1elas    = "ela leg mom 1       ";
	ifstream serpentReactionPert(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionPerturbed.pre");
	if (!serpentReactionPert) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionPerturbed.pre\"!" << endl;
	}
	string lineRead;
	unsigned reactionCount = 0;
	ofstream serpentReactionPertIndex(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentReactionPerturbed.index");
	while (!serpentReactionPert.eof()) {
		reactionCount++;
		getline(serpentReactionPert, lineRead);
		if (lineRead == elastic) {
			serpentReactionPertIndex <<std::left << setw(15) << "ELASTIC" << reactionCount<<endl;
		}
		else if (lineRead == inelastic) {
			serpentReactionPertIndex << setw(15) << "INELASTIC" << reactionCount<<endl;
		}
		else if (lineRead == capture) {
			serpentReactionPertIndex << setw(15) << "CAPTURE" << reactionCount<<endl;
		}
		else if (lineRead == fission) {
			serpentReactionPertIndex << setw(15) << "FISSION" << reactionCount<<endl;
		}
		else if (lineRead == nu) {
			serpentReactionPertIndex << setw(15) << "NU" << reactionCount<<endl;
		}
		else if (lineRead == nxn) {
			serpentReactionPertIndex << setw(15) << "NxN" << reactionCount<<endl;
		}
		else if (lineRead == khi) {
			serpentReactionPertIndex << setw(15) << "KHI" << reactionCount<<endl;
		}
		else if (lineRead == p1elas) {
			serpentReactionPertIndex << setw(15) << "P1ELAS" << reactionCount<<endl;
		}
		else {
			//serpentReactionPertIndex << setw(15) << lineRead << reactionCount<<endl;
		}
	}
	serpentReactionPert.close();
	serpentReactionPertIndex.close();
	/*

	*/
}

void getSensitivity(const string sensitivityFileName)
{
	engine *ep;
	if (!(ep = engOpen(NULL))) {
		cout << "Can't start MATLAB engine!" << endl;
		return;
	}
	//engEvalString(ep, "run 'C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\dlfr6_pert_sens.m'");
	if (engEvalString(ep, ("run '" + workDirectory + "\\" + sensitivityFileName + "_sens.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_sens.m' failed!" << endl;
		return;
	}
	mxArray *serpentNuclideNumber = mxCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
	serpentNuclideNumber = engGetVariable(ep, "SENS_N_ZAI");
	double *serpentNuclideNumberN;
	serpentNuclideNumberN = mxGetPr(serpentNuclideNumber);
	int serpentNuclideNumberInt = int(*serpentNuclideNumberN) - 1;
	engClose(ep);

	//ifstream inF("C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\index\\serpentNuclide.index");
	ifstream inF(workDirectory + "\\" + sensitivityFileName + "_temp\\serpentNuclide.index");
	//string serpentNuclideIndex[3][144];
	string **serpentNuclideIndex;
	serpentNuclideIndex = new string*[3];
	if (!inF) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\serpentNuclide.index\"!" << endl;
		return;
	}
	for (int i = 0; i < 3; i++) {
		serpentNuclideIndex[i] = new string[serpentNuclideNumberInt];
	}

	string lineRead;
	stringstream ss1;
	for (int i = 0; i<serpentNuclideNumberInt; i++) {
		getline(inF, lineRead);
		ss1 << lineRead;
		for (unsigned j = 0; j < 3; j++) ss1 >> serpentNuclideIndex[j][i];
		ss1.clear();
	}
	inF.close();

	ifstream inF2(indexDirectory + "\\commaraNuclideReaction.index");
	string commaraNRIndex[3][471];
	string lineRead2;
	stringstream ss2;
	if (!inF2) {
		cout << "Can't open file \"" << indexDirectory + "\\commaraNuclideReaction.index\"!" << endl;
		return;
	}
	for (unsigned i = 0; i<471; i++) {
		getline(inF2, lineRead2);
		ss2 << lineRead2;
		for (unsigned j = 0; j < 3; j++) ss2 >> commaraNRIndex[j][i];
		ss2.clear();
	}
	inF2.close();

	sensitivityData DLFRsensData[471];
	for (unsigned i = 0; i < 471; i++) {
		for (int j = 0; j < serpentNuclideNumberInt; j++) {
			if (commaraNRIndex[2][i] == serpentNuclideIndex[0][j]) {
				DLFRsensData[i].ifExist = true;
				DLFRsensData[i].NRnumber = i;
				DLFRsensData[i].nuclideNumber = serpentNuclideIndex[2][j];
				unsigned rNumber = getSerpentReactionNumber(sensitivityFileName, commaraNRIndex[1][i]);
				if (rNumber != 0) {
					DLFRsensData[i].reactionNumber = rNumber;
				}
				break;
			}
		}
	}

	//ofstream arrangeSensitivity("C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\arrangeSensitivity.m");
	ofstream arrangeSensitivity(workDirectory + "\\" + sensitivityFileName + "_temp\\arrangeSensitivity.m");
	cout << "Generating a MATLAB script to arrange senstivity data...";
	for (unsigned i = 0; i < 471; i++) {
		if (DLFRsensData[i].ifExist) {
			arrangeSensitivity << "sens_nr(" << i + 1 << ",:) = ADJ_PERT_KEFF_SENS(1," << DLFRsensData[i].nuclideNumber << "," << DLFRsensData[i].reactionNumber << ",:,1);\n";
			arrangeSensitivity << "sens_nr(" << i + 1 << ",:) = reshape(sens_nr(" << i + 1 << ",:),[1,33]);\n";
		}
		else {
			arrangeSensitivity << "sens_nr(" << i + 1 << ",:) = zeros(1,33);\n";
		}
	}
	arrangeSensitivity 
		<<"sens_nr=fliplr(sens_nr);\n"
		<< "sensitivity = [";
	for (unsigned i = 1; i < 471; i++) {
		arrangeSensitivity << "sens_nr(" << i << ",:),";
	}
	arrangeSensitivity << "sens_nr(471,:)];";
	arrangeSensitivity << "\nsave('" << workDirectory + "\\" + sensitivityFileName + "_temp\\sensitivity.orig','sensitivity','-ascii');\n";
	arrangeSensitivity.close();
	cout << "\nSuccessfully generated the MATLAB script to arrange senstivity data!\n";
}

void generateSortSensitivityScript(const string sensitivityFileName)
{
	ofstream sortSensitivityScript(workDirectory + "\\" + sensitivityFileName + "_temp\\sortSensitivity.m");
	sortSensitivityScript
		<< "for i=1:471\n"
		<< "sens_max(i,1)=abs(sum(sens_nr(i,:))); % sort by energy integrated absolote value\n"
		<< "end\n"
		<< "[sens_sort, sens_index] = sort(sens_max, 'descend');\n"
		<< "for j = 1:471\n"
		<< "sens_mx(j, :) = sens_nr(sens_index(j, 1), :);\n"
		<< "sens_nreg_sort(j, 1) = sum(sens_mx(j,:));\n"
		<< "sens_m_index(j, 1) = sens_index(j, 1);\n"
		<< "end\n"
		<< "sens_m_indexi = int16(sens_m_index);\n"
		<< "recdf1 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\sensitivitySortIndex', 'wt');\n"
		<< "recdf2 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\sensitivitySort.pre', 'wt');\n"
		<< "for i = 1:471\n"
		<< "fprintf(recdf1, '% d\\n', sens_m_indexi(i, 1));\n"
		<< "fprintf(recdf2, '%7d  %12g\\n', sens_m_indexi(i, 1)-1, sens_nreg_sort(i,1));\n"
		<< "end\n"
		<< "fclose(recdf1);\n"
		<< "fclose(recdf2);\n";
	sortSensitivityScript.close();
}

void generateSensitivityStairScript(const string sensitivityFileName)
{
	//ifstream inF1("C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\sensitivitySortIndex");
	ifstream inF1(workDirectory + "\\" + sensitivityFileName + "_temp\\sensitivitySortIndex");
	const unsigned plotDataNumber = 10;
	unsigned rec[plotDataNumber];
	string lineRead1;
	stringstream ss1;
	if (!inF1) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\sensitivitySortIndex\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < plotDataNumber; i++) {
		getline(inF1, lineRead1);
		ss1 << lineRead1;
		ss1 >> rec[i];
		ss1.clear();
	}
	inF1.close();

	ifstream inF2(indexDirectory + "\\commaraNuclideReaction.index");
	string commaraNRIndex[3][471];
	string lineRead2;
	stringstream ss2;
	if (!inF2) {
		cout << "Can't open file \"" << indexDirectory + "\\commaraNuclideReaction.index\"!" << endl;
		return;
	}
	for (unsigned i = 0; i<471; i++) {
		getline(inF2, lineRead2);
		ss2 << lineRead2;
		for (unsigned j = 0; j < 3; j++) ss2 >> commaraNRIndex[j][i];
		ss2.clear();
	}
	inF2.close();

	ifstream sensitivitySortPre(workDirectory + "\\" + sensitivityFileName + "_temp\\sensitivitySort.pre");
	string sensitivityResultPre[2][471];
	string lineRead3;
	stringstream ss3;
	if (!sensitivitySortPre) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\sensitivitySort.pre\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < 471; i++) {
		getline(sensitivitySortPre, lineRead3);
		ss3 << lineRead3;
		for (unsigned j = 0; j < 2; j++) ss3 >> sensitivityResultPre[j][i];
		ss3.clear();
	}
	sensitivitySortPre.close();

	ofstream sensitivitySortResult(workDirectory + "\\" + sensitivityFileName + "_temp\\sensitivitySort.result");
	for (unsigned i = 0; i < 471; i++) {
		for (unsigned j = 0; j < 471; j++) {
			if (sensitivityResultPre[0][i] == commaraNRIndex[0][j]) {
				sensitivitySortResult << std::left << setw(4) << i + 1 << setw(5) << sensitivityResultPre[0][i] << std::right << setw(7) << commaraNRIndex[2][j] << "-" << std::left << setw(12) << commaraNRIndex[1][j] << setw(12) << sensitivityResultPre[1][i] << endl;
				break;
			}
		}
	}
	sensitivitySortResult.close();

	//ofstream plotStairsScript("C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\plotSensitivityStairsScript.m");
	ofstream plotStairsScript(workDirectory + "\\" + sensitivityFileName + "_temp\\plotSensitivityStairsScript.m");
	plotStairsScript
		<< "for i=1:33\n"
		<< "ene(1,i)=1000000*SENS_E(1,35-i)\n"
		<< "end\n";
	plotStairsScript << "figure(1);\n";
	for (unsigned i = 0; i < (plotDataNumber/2); i++) {
		plotStairsScript << "stairs(ene,sens_mx(" << i + 1 << ",:),'LineWidth',1.5);hold on\n";
	}
	for (unsigned i = (plotDataNumber/2); i < plotDataNumber; i++) {
		plotStairsScript << "stairs(ene,sens_mx(" << i + 1 << ",:),'--','LineWidth',1.5);hold on\n";
	}
	/*
	for (unsigned i = 14; i < 20; i++) {
		plotStairsScript << "stairs(ene,sens_mx(" << i + 1 << ",:),'-.');hold on\n";
	}
	*/
	plotStairsScript << "xlabel('Energy(eV)', 'FontSize', 10);\n";
	plotStairsScript << "ylabel('Sensitivity coeff', 'FontSize', 10);\n";
	plotStairsScript << "title('Sensitivity of keff in DLFR assembly','FontSize',14);\n";
	plotStairsScript << "xlim([1, 19600000]);\n";
	plotStairsScript << "legend('";
	for (unsigned i = 0; i < plotDataNumber-1; i++) {
		plotStairsScript << commaraNRIndex[2][rec[i]-1] << "-" << commaraNRIndex[1][rec[i]-1] << "','";
	}
	plotStairsScript << commaraNRIndex[2][rec[plotDataNumber-1]-1] << "-" << commaraNRIndex[1][rec[plotDataNumber-1]-1] << "','location','NorthWest');\n";
	plotStairsScript << "set(gca,'xscale','log');\n";
	plotStairsScript << "set(gcf,'Position',get(0,'ScreenSize'));\n";
	plotStairsScript << "saveas(gca,'" + workDirectory + "\\" + sensitivityFileName + "_picture\\sensitivityStairs.jpg');";
	plotStairsScript.close();
}

void generateCalculateUncertaintyScript(const string sensitivityFileName)
{
	ofstream calculateUncertainty(workDirectory + "\\" + sensitivityFileName + "_temp\\calculateUncertainty.m");
	calculateUncertainty << "rcvStruct=load('" << workDirectory + "\\index\\rcv.mat');\n";
	calculateUncertainty << "rcvCell=struct2cell(rcvStruct);\n";
	calculateUncertainty << "rcv=cell2mat(rcvCell);\n";

	calculateUncertainty<<"totalUncertainty = sensitivity*rcv*sensitivity';\n";
	calculateUncertainty<<"rcv_sens = rcv*sensitivity';\n";
	calculateUncertainty<<"unc_orig = sensitivity.*rcv_sens';\n";
	calculateUncertainty<<"for i = 1:15543\n";
	calculateUncertainty<<"unc_cons(1, i) = 2 * unc_orig(1, i) - sensitivity(1, i)*rcv(i, i)*sensitivity(1, i);\n";
	calculateUncertainty<<"end\n";
	calculateUncertainty<<"unc_nr = unc_cons./totalUncertainty;   % uncertainty fraction of each nuclide - reaction - energy\n";

	
	calculateUncertainty.close();
}

void generateArrangeUncertaintyScript(const string sensitivityFileName)
{
	ofstream arrangeUncertaintyScript(workDirectory + "\\" + sensitivityFileName + "_temp\\arrangeUncertainty.m");

	for (unsigned i = 0; i < 471; i++) {
		for (unsigned j = 0; j < 471; j++) {
			if (commaraMatrixStruct[i][j].ifExist==1) {
				arrangeUncertaintyScript
					<< "unc_nr_contrib(" << commaraMatrixStruct[i][j].serialNumber + 1 << ",:)=sens_nr(" << i + 1 << ",:).*"
					<< "((rcv(" << i * 33 + 1 << ":" << (i + 1) * 33 << "," << j * 33 + 1 << ":" << (j + 1) * 33 << ")*sens_nr(" << j + 1 << ",:)')');\n";
			}
			else if (commaraMatrixStruct[i][j].ifExist == 2) {
				arrangeUncertaintyScript
					<< "unc_nr_contrib(" << commaraMatrixStruct[i][j].serialNumber + 1 << ",:)=2*sens_nr(" << i + 1 << ",:).*"
					<< "((rcv(" << i * 33 + 1 << ":" << (i + 1) * 33 << "," << j * 33 + 1 << ":" << (j + 1) * 33 << ")*sens_nr(" << j + 1 << ",:)')');\n";
			}
		}
	}

	arrangeUncertaintyScript << "count_nr=1;\n"
		<< "count_unc=1;\n"
		<< "for i=1:471\n"
		<< "for j=1:33\n"
		<< "unc_nr_m(count_nr,j)=unc_nr(1,count_unc);\n"
		<< "unc_nr_compon(count_nr,j)=unc_orig(1,count_unc); % uncertainty component\n"
//		<< "unc_nr_contrib(count_nr,j)=unc_orig(1,count_unc)/totalUncertainty; % uncertainty contributed to total\n"
		<< "count_unc=count_unc+1;\n"
		<< "end\n"
		<< "count_nr=count_nr+1;\n"
		<< "end\n";
	arrangeUncertaintyScript.close();
}

void generateSortUncertaintyScript(const string sensitivityFileName)
{
	ofstream sortUncertaintyScript(workDirectory + "\\" + sensitivityFileName + "_temp\\sortUncertainty.m");
	sortUncertaintyScript
		<< "for i = 1:569\n"
		<<"unc_nreg_contrib(i, 1) = sum(unc_nr_contrib(i, :))/totalUncertainty;\n"
		<<"unc_nr_contrib_frac(i,:)=unc_nr_contrib(i,:)/totalUncertainty;\n"
		<<"unc_nreg_contrib_abs(i, 1) = abs(unc_nreg_contrib(i, 1));\n"
		<<"end\n"
		<<"[unc_contrib_sort, unc_contrib_sort_index] = sort(unc_nreg_contrib_abs, 'descend');\n"
		<<"\nunc_contrib_sort_indexi = int16(unc_contrib_sort_index);\n"
		<< "unc_recdf7 = fopen('" << workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyContributionSortIndex', 'wt');\n"
		<< "unc_recdf4 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\uncertaintyContribSort.pre', 'wt');\n"
		<<"for i = 1:569\n"
		<<"unc_mx(i, :) = unc_nr_contrib_frac(unc_contrib_sort_index(i, 1), :);% store uncertainty contributed to total\n"
		<<"fprintf(unc_recdf7, '% d\\n', unc_contrib_sort_indexi(i, 1));\n"
		<<"fprintf(unc_recdf4, '%7d  %12g\\n', unc_contrib_sort_indexi(i, 1), unc_nreg_contrib(unc_contrib_sort_indexi(i,1), 1));\n"
		//<<"fprintf(unc_recdf4, '%7d  %12g\\n', unc_contrib_sort_indexi(i, 1), unc_contrib_sort(i, 1));\n"
		<<"end\n"
		<<"fclose(unc_recdf4);\n"
		<<"fclose(unc_recdf7);\n"
		<< "for i = 1:471\n"
		<< "unc_max(i, 1) = abs(sum(unc_nr_compon(i, :))); % sort data by contribution to total uncertainty\n"      
		<< "end\n"
		<< "[unc_sort, unc_index] = sort(unc_max, 'descend');\n"
		<< "for j = 1:471\n"
		//<< "unc_mx(j, :) = unc_nr_m(unc_index(j, 1), :);\n"
		<< "unc_m_index(j, 1) = unc_index(j, 1);\n"
		<< "unc_nreg_sort(j,1)=sum(unc_nr_m(unc_index(j,1),:)); % energy group integrated conservative relative uncertainty\n"
		<< "unc_nreg_consv(j,1)=sum(unc_nr_m(unc_index(j,1),:))*totalUncertainty; % energy group integrated conservative uncertainty\n"
		<< "unc_nreg_compon(j,1)=sum(unc_nr_compon(unc_index(j,:),:))/totalUncertainty; % energy group integrated uncertainty components\n"
		<< "unc_nreg_contrib(j,1)=sum(unc_nr_contrib(unc_index(j,:),:)); % energy group integrated uncertainty contributed to total\n"
		<< "end\n"
		<< "\n"
		<< "unc_m_indexi = int16(unc_m_index);\n"
		<< "\n"
		<< "unc_recdf1 = fopen('" << workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintySortIndex', 'wt');\n"
		<< "unc_recdf2 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\ConsvRelaUncertaintySort.pre', 'wt');\n"
		<< "unc_recdf3 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\uncertaintyComponSort.pre', 'wt');\n"
		<< "unc_recdf5 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\ConsvUncertaintySort.pre', 'wt');\n"
		<< "unc_recdf6 = fopen('" << workDirectory << "\\" << sensitivityFileName << "_temp\\totalUncertainty.pre', 'wt');\n"
		<< "for i = 1:471\n"
		<< "fprintf(unc_recdf1, '% d\\n', unc_m_indexi(i, 1)-1);\n"
		<< "fprintf(unc_recdf2, '%7d  %12g\\n', unc_m_indexi(i, 1)-1, unc_nreg_sort(i,1));\n"
		<< "fprintf(unc_recdf3, '%7d  %12g\\n', unc_m_indexi(i, 1)-1, unc_nreg_compon(i,1));\n"
		<< "fprintf(unc_recdf5, '%7d  %12g\\n', unc_m_indexi(i, 1)-1, unc_nreg_consv(i,1));\n"
		<< "fprintf(unc_recdf6, '%12g\\n', sqrt(totalUncertainty));\n"
		<< "end\n"
		<< "fclose(unc_recdf1);\n"
		<< "fclose(unc_recdf2);\n"
		<< "fclose(unc_recdf3);\n"
		<< "fclose(unc_recdf5);\n"
		<< "fclose(unc_recdf6);\n";
	sortUncertaintyScript.close();
}

void generateUncertaintyStairScript(const string sensitivityFileName)
{
	ifstream inF1(workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyContributionSortIndex");
	const unsigned plotDataNumber = 10;
	unsigned rec[plotDataNumber];
	string lineRead1;
	stringstream ss1;
	if (!inF1) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintySortIndex\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < plotDataNumber; i++) {
		getline(inF1, lineRead1);
		ss1 << lineRead1;
		ss1 >> rec[i];
		ss1.clear();
	}
	inF1.close();

	ifstream inF2(indexDirectory + "\\commaraNuclideReaction.index");
	string commaraNRIndex[3][471];
	string lineRead2;
	stringstream ss2;
	if (!inF2) {
		cout << "Can't open file \"" << indexDirectory + "\\commaraNuclideReaction.index\"!" << endl;
		return;
	}
	for (unsigned i = 0; i<471; i++) {
		getline(inF2, lineRead2);
		ss2 << lineRead2;
		for (unsigned j = 0; j < 3; j++) ss2 >> commaraNRIndex[j][i];
		ss2.clear();
	}
	inF2.close();

	ifstream uncertaintySortPre(workDirectory + "\\" + sensitivityFileName + "_temp\\ConsvRelaUncertaintySort.pre");
	string uncertaintyResultPre[2][471];
	string lineRead3;
	stringstream ss3;
	if (!uncertaintySortPre) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\ConsvRelaUncertaintySort.pre\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < 471; i++) {
		getline(uncertaintySortPre, lineRead3);
		ss3 << lineRead3;
		for (unsigned j = 0; j < 2; j++) ss3 >> uncertaintyResultPre[j][i];
		ss3.clear();
	}
	uncertaintySortPre.close();

	ifstream uncertaintyContribSortPre(workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyContribSort.pre");
	string uncertaintyContribResultPre[2][569];
	string lineRead5;
	stringstream ss5;
	if (!uncertaintyContribSortPre) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyContribSort.pre\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < 569; i++) {
		getline(uncertaintyContribSortPre, lineRead5);
		ss5 << lineRead5;
		for (unsigned j = 0; j < 2; j++) ss5 >> uncertaintyContribResultPre[j][i];
		ss5.clear();
	}
	uncertaintyContribSortPre.close();

	ifstream uncertaintyComponSortPre(workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyComponSort.pre");
	string uncertaintyComponResultPre[2][471];
	string lineRead6;
	stringstream ss6;
	if (!uncertaintyComponSortPre) {
		cout << "Can't open file \"" << workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyComponSort.pre\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < 471; i++) {
		getline(uncertaintyComponSortPre, lineRead6);
		ss6 << lineRead6;
		for (unsigned j = 0; j < 2; j++) ss6 >> uncertaintyComponResultPre[j][i];
		ss6.clear();
	}
	uncertaintyComponSortPre.close();

	ifstream commaraNRpair(indexDirectory + "\\commaraMatrix.index");
	string nrPair[5][569];
	string lineRead4;
	stringstream ss4;
	if (!commaraNRpair) {
		cout << "Can't open file \"" << indexDirectory + "\\commaraMatrix.index\"!" << endl;
		return;
	}
	for (unsigned i = 0; i < 569; i++) {
		getline(commaraNRpair, lineRead4);
		ss4 << lineRead4;
		for (unsigned j = 0; j < 5; j++) ss4 >> nrPair[j][i];
		ss4.clear();
	}
	commaraNRpair.close();

	ofstream uncertaintyContribSortResult(workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyContributionSort.result");
	for (unsigned i = 0; i < 569; i++) {
		for (unsigned j = 0; j < 569; j++) {
			if (uncertaintyContribResultPre[0][i] == nrPair[0][j]) {
				uncertaintyContribSortResult << std::left << setw(4) << i+1 << setw(5) << uncertaintyContribResultPre[0][i] 
					<< std::right << setw(7) << nrPair[2][j] << "-" << std::left << setw(12) << nrPair[1][j] 
					<< "&"<<std::right << setw(7) << nrPair[4][j] << "-" << std::left << setw(12) << nrPair[3][j] 
					<< setw(12) << uncertaintyContribResultPre[1][i] << endl;
				break;
			}
		}
	}
	uncertaintyContribSortResult.close();

	ofstream uncertaintyComponSortResult(workDirectory + "\\" + sensitivityFileName + "_temp\\uncertaintyComponentSort.result");
	for (unsigned i = 0; i < 471; i++) {
		for (unsigned j = 0; j < 471; j++) {
			if (uncertaintyComponResultPre[0][i] == commaraNRIndex[0][j]) {
				uncertaintyComponSortResult << std::left << setw(4) << i + 1 << setw(5) << uncertaintyComponResultPre[0][i] << std::right << setw(7) << commaraNRIndex[2][j] << "-" << std::left << setw(12) << commaraNRIndex[1][j] << setw(12) << uncertaintyComponResultPre[1][i] << endl;
				break;
			}
		}
	}
	uncertaintyContribSortResult.close();

	ofstream uncertaintySortResult(workDirectory + "\\" + sensitivityFileName + "_temp\\ConsvRelaUncertaintySort.result");
	for (unsigned i = 0; i < 471; i++) {
		for (unsigned j = 0; j < 471; j++) {
			if (uncertaintyResultPre[0][i] == commaraNRIndex[0][j]) {
				uncertaintySortResult << std::left << setw(4) << i + 1 << setw(5) << uncertaintyResultPre[0][i] << std::right << setw(7) << commaraNRIndex[2][j] << "-" << std::left << setw(12) << commaraNRIndex[1][j] << setw(12) << uncertaintyResultPre[1][i] << endl;
				break;
			}
		}
	}
	uncertaintySortResult.close();

	ofstream plotStairsScript(workDirectory + "\\" + sensitivityFileName + "_temp\\plotUncertaintyStairsScript.m");
	//plotStairsScript << "ene=logspace(log10(19600000),-5,33);\n";
	plotStairsScript
		<< "for i=1:33\n"
		<< "ene(1,i)=1000000*SENS_E(1,35-i)\n"
		<< "end\n";
	plotStairsScript << "figure(2);\n";
	for (unsigned i = 0; i < (plotDataNumber/2); i++) {
		plotStairsScript << "stairs(ene,unc_mx(" << i + 1 << ",:),'LineWidth',1.5);hold on\n";
	}
	for (unsigned i = (plotDataNumber/2); i < plotDataNumber; i++) {
		plotStairsScript << "stairs(ene,unc_mx(" << i + 1 << ",:),'--','LineWidth',1.5);hold on\n";
	}
	/*
	for (unsigned i = 14; i < 20; i++) {
		plotStairsScript << "stairs(ene,unc_mx(" << i + 1 << ",:),'-.');hold on\n";
	}
	*/
	plotStairsScript << "xlabel('Energy(eV)','FontSize',10);\n";
	plotStairsScript << "ylabel('Contribution to total uncertainty', 'FontSize', 10);\n";
	plotStairsScript << "title('Components of keff uncertainty in DLFR assembly','FontSize',14);\n";
	plotStairsScript << "xlim([1, 19600000]);\n";
	//plotStairsScript << "ylim([-0.005, 0.01]);\n";
	plotStairsScript << "legend('";
	for (unsigned i = 0; i < plotDataNumber-1; i++) {
		plotStairsScript << nrPair[2][rec[i]-1] << "-" << nrPair[1][rec[i]-1] <<"&"<<nrPair[4][rec[i]-1]<<"-"<<nrPair[3][rec[i]-1]<< "','";
	}
	plotStairsScript << nrPair[2][rec[plotDataNumber-1]-1] << "-" << nrPair[1][rec[plotDataNumber-1]-1] <<"&"<<nrPair[4][rec[plotDataNumber-1]-1]<<"-"<<nrPair[3][rec[plotDataNumber-1]-1] << "','location','NorthWest');\n";
	plotStairsScript << "set(gca,'xscale','log');\n";
	plotStairsScript << "set(gcf,'Position',get(0,'ScreenSize'));\n";
	plotStairsScript << "saveas(gca,'" + workDirectory + "\\" + sensitivityFileName + "_picture\\uncertaintyStairs.jpg');";
	plotStairsScript.close();
}

void sensitivityAnalysis(const string sensitivityFileName)
{
	engine *sensAnls;
	cout << "Launching MATLAB R2016a engine...\n";
	if (!(sensAnls = engOpen(NULL))) {
		cout << "Can't start MATLAB engine!" << endl;
		return;
	}
	cout << "MATLAB R2016a engine was launched successfully!\n";

	cout << "MATLAB engine loading" << sensitivityFileName << " sensitivity data file...\n";
	//engEvalString(sensAnls, "run 'C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\dataProcessDirectory\\dlfr6_pert_sens.m'");
	if (engEvalString(sensAnls, ("run '" + workDirectory + sensitivityFileName + "_sens.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_sens.m' failed!" << endl;
		return;
	}
	cout << sensitivityFileName << " sensitivity data file was loaded!\n";

	system(("mkdir " + sensitivityFileName +"_temp").c_str());
	cout << "Created temporary files directory!\n";
	system(("mkdir " + sensitivityFileName +"_picture").c_str());
	cout << "Created picture directory!\n";

	cout << "Generating pertubed nuclides index...\n";
	generateSerpentNuclidePre(sensitivityFileName);
	generateSerpentNuclideIndex(sensitivityFileName);
	generateSerpentReactionPertubedIndex(sensitivityFileName);

	//getReactionPairPosition(indexDirectory+"\\commaraNuclideReaction.index", indexDirectory+"\\COMMARA_2.0_index");
	getMatricesMap();
	cout << "Getting sensitivity data...\n";
	getSensitivity(sensitivityFileName);
	cout << "Arranging sensitivity data by nuclide-reation...\n";
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\arrangeSensitivity.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\arrangeSensitivity.m' failed!" << endl;
		return;
	}

	cout << "Generating MATLAB script to sort sensitivity data by maximum absolute sensitivity value...\n";
	generateSortSensitivityScript(sensitivityFileName);

	cout << "MATLAB engine sorting sensitivity data...\n";
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\sortSensitivity.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\sortSensitivity.m' failed!" << endl;
		return;
	}
	
	cout << "Generating MATLAB script to plot sensitivity stairs graph...\n";
	generateSensitivityStairScript(sensitivityFileName);
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\plotSensitivityStairsScript.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\plotSensitivityStairsScript.m' failed!" << endl;
		return;
	}

	cout << "Generating MATLAB script to calculate uncertainty...\n";
	generateCalculateUncertaintyScript(sensitivityFileName);
	cout << "Calculating uncertainty...\n";
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\calculateUncertainty.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\calculateUncertainty.m' failed!" << endl;
		return;
	}
	cout << "Generating arranging uncertainty MATLAB script...\n";
	generateArrangeUncertaintyScript(sensitivityFileName);
	cout << "Arranging uncertainty data by nuclide-reation...\n";
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\arrangeUncertainty.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\arrangeUncertainty.m' failed!" << endl;
		return;
	}

	cout << "Generating MATLAB script to sort uncertainty data by maximum absolute sensitivity value...\n";
	generateSortUncertaintyScript(sensitivityFileName);

	cout << "MATLAB engine sorting uncertainty data...\n";
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\sortUncertainty.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\sortUncertainty.m' failed!" << endl;
		return;
	}
	
	cout << "Generating MATLAB script to plot uncertainty stairs graph...\n";
	generateUncertaintyStairScript(sensitivityFileName);
	if (engEvalString(sensAnls, ("run '" + workDirectory + "\\" + sensitivityFileName + "_temp\\plotUncertaintyStairsScript.m'").c_str())) {
		cout << "MATLAB engine run '" << workDirectory + "\\" + sensitivityFileName + "_temp\\plotUncertaintyStairScript.m' failed!" << endl;
		return;
	}

	//cout << "Press any key to close MATLAB engine.\n";
	//system("pause");
	engClose(sensAnls);
	cout << "MATLAB R2016a engine closed!\n";

	//engEvalString(sensAnls, "commaraMatrixStruct = load 'C:\\Users\\LI Jin\\Documents\\Visual Studio 2017\\Projects\\ReadCommara\\ReadCommara\\index\\commara.mat'");
	//engEvalString(sensAnls, "commaraMatrixCell = struct2cell(commaraMatrixStruct);commaraMatrix = cell2mat(commaraMatrixCell)");
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
	if (result[resultLength - 1]== '\n') {
		result.erase(resultLength - 1);
	}
	return result;
}