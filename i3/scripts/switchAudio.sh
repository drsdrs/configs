#!/bin/bash

USER_NAME=$USER
USER_ID=$(id -u "$USER_NAME")
HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status)

export PULSE_SERVER="unix:/run/user/"$USER_ID"/pulse/native"

echo "HDMI: "$HDMI_STATUS

if [[ $HDMI_STATUS == connected ]]
then
   sudo -u "$USER_NAME" pactl --server "$PULSE_SERVER" set-card-profile 0 output:hdmi-stereo-extra1
   sudo -u "$USER_NAME" pactl --server "$PULSE_SERVER" set-card-profile 1 input:analog-stereo
else
   sudo -u "$USER_NAME" pactl --server "$PULSE_SERVER" set-card-profile 1 output:analog-stereo+input:analog-stereo
   sudo -u "$USER_NAME" pactl --server "$PULSE_SERVER" set-card-profile 0 off 

fi
