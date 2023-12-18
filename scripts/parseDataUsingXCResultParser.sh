#!/bin/bash

FULL_PATH=`pwd`
ROOT_PATH=`dirname $FULL_PATH`

PROJECT_PATH=$1
PROJECT_RELATIVE_PATH=../$PROJECT_PATH

xcresultparser -q -c -o xml --project-root $ROOT_PATH/$PROJECT_PATH $PROJECT_RELATIVE_PATH/output/tests.xcresult > $PROJECT_RELATIVE_PATH/output/xcresult_coverage.xml
