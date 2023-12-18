#!/bin/bash 

PROJECT=$1
LEN=${#PROJECT}
IDENTIFIER_LEN=28
SLATHER_TEMPLATE=$2
FILTER=$3

echo "Find the project $PROJECT in the DerivedData folder"
IDENTIFIER=`ls -tr ~/Library/Developer/Xcode/DerivedData | grep $PROJECT | grep -v $FILTER | cut -c $((LEN+2))-$((IDENTIFIER_LEN+1+LEN))`
echo "ID is: " $IDENTIFIER

cp $SLATHER_TEMPLATE slather.yml
echo "Generate the Slather YML"
sed -i '' "s/IDENTIFIER/$IDENTIFIER/g" slather.yml
sed -i '' "s/PROJECT/$PROJECT/g" slather.yml

cp slather.yml ../$PROJECT/.slather.yml
