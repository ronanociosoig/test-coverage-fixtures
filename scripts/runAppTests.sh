#!/bin/bash

PROJECT_PATH=../$1
DEVICE=$2
IPHONE_OS=$3

[ -L $PROJECT_PATH/output/tests ] && rm $PROJECT_PATH/output/tests || echo "All clear. No test symlink"
[ -d $PROJECT_PATH/output/tests.xcresult ] && rm -r $PROJECT_PATH/output/tests.xcresult || echo "All clear. No test results"
tuist test --path $PROJECT_PATH --device "$DEVICE" --os "$IPHONE_OS" --result-bundle-path $PROJECT_PATH/output/tests
