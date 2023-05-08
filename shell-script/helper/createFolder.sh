function createJsFolder() {
  mkdir node_modules src public
  touch src/index.js && mkdir src/pages && touch src/pages/Home.js
}

function createGoFolder() {
  mkdir api assets
}

function createPyFolder() {
  mkdir utils lib
}