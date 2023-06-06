#!/bin/bash

AVRDUDE_PATH=$1
AVRDUDE_CONF_PATH=$2
FIRMWARE_PATH=$3
TTY_NAME=$4
 
# export PATH="/usr/local/etc/chonkerkeys/homebrew/bin:$PATH"
echo "$PATH"
export PATH=""
echo "AVRDUDE=$AVRDUDE_PATH"
echo "MODEL=$MODEL"
echo "TTY_NAME=$TTY_NAME"

echo "FIMRWARE_PATH=$FIRMWARE_PATH"
if [[ -f $FIRMWARE_PATH ]]
then
  "$AVRDUDE_PATH" -C "$AVRDUDE_CONF_PATH" -p atmega32u4 -c avr109 -U flash:w:"$FIRMWARE_PATH":i -P "$TTY_NAME"
else
  echo "$FIRMWARE_PATH doesn't exist"
  exit 1
fi
