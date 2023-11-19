#!/bin/bash 


PROJECT_PATH=../AppWithPartialCoverage

xcrun xccov view --archive $PROJECT_PATH/output/tests.xcresult --only-targets BasicApp
