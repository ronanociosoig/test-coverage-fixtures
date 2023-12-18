#!/bin/bash

PROJECT1=AppWithGoodCoverage
PROJECT2=AppWithPartialCoverage
PROJECT3=ModularAppWithGoodCoverage
PROJECT4=ModularAppWithDependency

function parseData() {
	echo "Parse data for " $1
    bash ./parseDataUsingSonarqubeScript.sh $1
    bash ./parseDataUsingXCResultParser.sh $1
    bash ./parseDataUsingXcc.sh $1
    bash ./parseDataUsingSlather.sh $1	
}

parseData $PROJECT1
parseData $PROJECT2
parseData $PROJECT3
parseData $PROJECT4
