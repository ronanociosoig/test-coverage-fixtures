#!/bin/bash
tust clean tests
bash ./runAppTests.sh AppWithGoodCoverage "iPhone 15" "17.2"
bash ./runAppTests.sh AppWithPartialCoverage "iPhone 15" "17.2"
bash ./runAppTests.sh ModularAppWithGoodCoverage "iPhone 15" "17.2"
bash ./runAppTests.sh ModularAppWithDependency "iPhone 15" "17.2"
