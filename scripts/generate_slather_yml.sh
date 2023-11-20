#!/bin/bash 

# ls -tr ~/Library/Developer/Xcode/DerivedData | grep "ModularAppWithGoodCoverage | cut -c 28-56
PROJECT=$1
# PROJECT="ModularAppWithGoodCoverage"
LEN=${#PROJECT}
IDENTIFIER_LEN=28

IDENTIFIER=`ls -tr ~/Library/Developer/Xcode/DerivedData | grep $PROJECT | cut -c $((LEN+2))-$((IDENTIFIER_LEN+1+LEN))`
echo "ID is: " $IDENTIFIER

cp slather_template.yml slather.yml

sed -i '' "s/IDENTIFIER/$IDENTIFIER/g" slather.yml
sed -i '' "s/PROJECT/$PROJECT/g" slather.yml
