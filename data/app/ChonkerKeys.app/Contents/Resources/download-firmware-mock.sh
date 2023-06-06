#!/bin/bash

MODEL=$1
URL=$2

if [[ -d ~/qmk_firmware ]]
then
echo "qmk_firmware already exists"
else
mkdir ~/qmk_firmware
fi
cd ~/qmk_firmware
curl -o "chonkerkeys_${MODEL}_default.hex" -L "$URL"
