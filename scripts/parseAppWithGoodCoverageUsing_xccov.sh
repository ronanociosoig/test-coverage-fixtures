#!/bin/bash 


PROJECT_PATH=../AppWithGoodCoverage

xcrun xccov view --archive $PROJECT_PATH/output/tests.xcresult --only-targets BasicApp
