#pragma once
#ifndef READ_H
#define READ_H

#include <iostream>
//#include "lijin.h"

#include "engine.h"                                                // MATLAB calculating engine

#pragma comment (lib,"libmat.lib")
#pragma comment (lib,"libeng.lib")
#pragma comment (lib,"libmx.lib")

using namespace std;

extern const string workDirectory;
extern const string indexDirectory;

void getReactionPairPosition(const string _inFileName1_, const string _inFileName2_);

unsigned int getSerpentReactionNumber(const string sensitivityFileName, const string _reaction_);

typedef struct _sensitivityData {
	bool ifExist = false;
	string nuclideNumber;
	unsigned reactionNumber;
	unsigned NRnumber;
} sensitivityData;

unsigned int getSerpentReactionNumber(const string sensitivityFileName, const string _reaction_);

void generateSerpentNuclidePre(const string sensitivityFileName);

void generateSerpentNuclideIndex(const string sensitivityFileName);

void generateSerpentReactionPertubedIndex(const string sensitivityFileName);

void getSensitivity(const string sensitivityFileName);

void generateSortSensitivityScript(const string sensitivityFileName);

void generateSensitivityStairScript(const string sensitivityFileName);

void generateCalculateUncertaintyScript(const string sensitivityFileName);

void generateArrangeUncertaintyScript(const string sensitivityFileName);

void generateSortUncertaintyScript(const string sensitivityFileName);

void generateUncertaintyStairScript(const string sensitivityFileName);

void sensitivityAnalysis(const string sensitivityFileName);

std::string cmdExecuteResult(const char* cmd);

#endif // !READ_H