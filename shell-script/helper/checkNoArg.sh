#!/bin/bash
function checkArg() {
  if [ $# -eq 0 ]
  then
    echo "Error: Tidak ada perintah apapun!"
    echo "Bahasa yang tersedia: go, javascript"
    echo "Tips: Contoh penggunaan 'sh project-generator.sh web-js js'"
    exit
  fi
}
