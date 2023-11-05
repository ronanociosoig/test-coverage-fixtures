#!/bin/bash

PROJECT_PATH=../ModularAppWithDependency

[ -L $PROJECT_PATH/output/tests ] && rm $PROJECT_PATH/output/tests || echo "All clear. No test symlink"
[ -d $PROJECT_PATH/output/tests.xcresult ] && rm -r $PROJECT_PATH/output/tests.xcresult || echo "All clear. No test results"
tuist test --path $PROJECT_PATH --device "iPhone 15" --os "17.0" --result-bundle-path $PROJECT_PATH/output/tests
