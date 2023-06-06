#!/bin/bash

QMK_GEN_HOME=$1
MODEL=$2
FIRMWARE_VERSION=$3
CONFIG=$4

export PATH="/usr/local/etc/chonkerkeys/homebrew/bin:$PATH"
echo "$PATH"
echo "QMK_GEN_HOME=$QMK_GEN_HOME"
echo "MODEL=$MODEL"
echo "CONFIG=$CONFIG"
echo "VERSION=$FIRMWARE_VERSION"
CONFIG_OUTPUT=~/qmk_firmware/keyboards/chonkerkeys/$MODEL/keymaps/default/config.c
echo "CONFIG_OUTPUT=$CONFIG_OUTPUT"
python --version
if [[ -f $CONFIG_OUTPUT ]]
then
  rm $CONFIG_OUTPUT
fi
make -C $QMK_GEN_HOME gen FIRMWARE_CONFIG=$CONFIG FIRMWARE_CONFIG_OUTPUT=$CONFIG_OUTPUT FIRMWARE_VERSION=$FIRMWARE_VERSION
qmk compile -kb chonkerkeys/$MODEL -km default
