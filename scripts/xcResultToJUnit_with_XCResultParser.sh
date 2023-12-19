#!/bin/bash

FULL_PATH=`pwd`
ROOT_PATH=`dirname $FULL_PATH`
PROJECT_PATH=ModularAppWithGoodCoverage
PROJECT_RELATIVE_PATH=../$PROJECT_PATH

xcresultparser -c -o junit --project-root $ROOT_PATH/$PROJECT_PATH --coverage-targets ModularAppWithGoodCoverage $PROJECT_RELATIVE_PATH/output/tests.xcresult

# expect there should be no coverage data bacause the workspace defines coverage for Numbers only, and here the coverage target 
# is the main project, and not Numbers. But it does provide the Numbers coverage data. 
