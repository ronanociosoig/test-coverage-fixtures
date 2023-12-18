#!/bin/bash

PROJECT_PATH=$1

xcrun xccov view --report --json ../$PROJECT_PATH/output/tests.xcresult > ../$PROJECT_PATH/output/coverage.json
xcc generate ../$PROJECT_PATH/output/coverage.json . sonarqube-xml
mv sonarqube.xml ../$PROJECT_PATH/output/xcc_coverage.xml
