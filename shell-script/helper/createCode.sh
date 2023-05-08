source ./helper/createFolder.sh
source ./helper/finishMessage.sh

delay=$((1 + RANDOM % 5))

function generateGo() {
  cd $1
  
  sleep $delay
  
  # create folder 
  createGoFolder
  
  # create starter code
  touch main.go

  finishMessage $delay $1
}

function generateJavascript() {
  cd $1
  
  sleep $delay
  
  # create folder 
  createJsFolder

  # create starter code
  touch package.json index.js
  
  finishMessage $delay $1
}

function generatePython() {
  cd $1

  sleep $delay
  
  # create folder
  createPyFolder

  # create starter code
  touch main.py

  finishMessage $delay $1
}