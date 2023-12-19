#!/bin/bash

FULL_PATH=`pwd`
ROOT_PATH=`dirname $FULL_PATH`
PROJECT_PATH=AppWithGoodCoverage
PROJECT_RELATIVE_PATH=../$PROJECT_PATH

xcresultparser -c -o junit --project-root $ROOT_PATH/$PROJECT_PATH $PROJECT_RELATIVE_PATH/output/tests.xcresult
