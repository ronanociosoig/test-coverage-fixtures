#!/bin/bash 

echo "Extract out code coverage using llvm-cov for the Basic app binary and sources"

IDENTIFIER=$1
BUILD_UUID=$2
PROJECT="AppWithPartialCoverage"
DERIVED_DATA_PATH="/Users/ronan.ociosoig/Library/Developer/Xcode/DerivedData"
PROFDATA="Coverage.profdata"

# AppWithPartialCoverage-hkjeraysmmpcohfftpmwqtmoitql
# /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/llvm-cov

FULL_PROFDATA_PATH=$DERIVED_DATA_PATH/$PROJECT-$IDENTIFIER/Build/ProfileData/$BUILD_UUID/$PROFDATA
FULL_BINARY_PATH=$DERIVED_DATA_PATH/$PROJECT-$IDENTIFIER/Build/Products/Debug-iphonesimulator/BasicApp.app/BasicApp

#xcrun llvm-cov show -instr-profile $FULL_PROFDATA_PATH $FULL_BINARY_PATH 

# xcrun llvm-cov report -instr-profile $FULL_PROFDATA_PATH $FULL_BINARY_PATH 

# The supported formats are: "text" (JSON), "lcov".

# -summary-only

xcrun llvm-cov export -format="lcov" -summary-only -instr-profile $FULL_PROFDATA_PATH $FULL_BINARY_PATH 