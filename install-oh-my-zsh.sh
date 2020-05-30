#!/bin/bash

checkcurl=/usr/bin/curl
checkwget=/usr/bin/wget

if [ -f "$checkcurl" ]; then
    echo "Fetching ohmyzsh via curl.."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  exit 0

elif [ -f "$checkwget" ]; then
    echo "Fetching ohmyzsh via wget.."
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
  exit 0
else
    echo "You must install either curl or wget to use this script"
  exit 1
fi
