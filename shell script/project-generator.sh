#!/bin/bash
source ./helper/checkNoArg.sh
source ./helper/createCode.sh

# check if no arg 
checkArg $@

# check if folder exist
if [ -d $1 ]; then
    echo "Error: Direktori sudah ada"
    exit 1
else
  echo "Creating Project..."
fi

# create folder
mkdir $1


# case programming language
case $2 in
  go)
    generateGo $1
    ;;
  javascript | js | react)
    generateJavascript $1
    ;;
  python | py)
    generatePython $1
esac
