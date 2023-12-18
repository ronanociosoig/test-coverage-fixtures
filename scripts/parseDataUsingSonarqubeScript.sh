#!/bin/bash
PROJECT=$1
cd ../$PROJECT
../scripts/xccov_to_sonarqube_generic.sh output/tests.xcresult > output/sonarqube_script_coverage.xml
