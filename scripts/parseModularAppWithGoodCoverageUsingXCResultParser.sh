#!/bin/bash

FULL_PATH=`pwd`
ROOT_PATH=`dirname $FULL_PATH`

PROJECT_PATH=ModularAppWithGoodCoverage
PROJECT_RELATIVE_PATH=../$PROJECT_PATH

xcresultparser -c -o xml --project-root $ROOT_PATH/$PROJECT_PATH $PROJECT_RELATIVE_PATH/output/tests.xcresult
