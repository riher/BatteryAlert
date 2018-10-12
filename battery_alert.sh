#!/usr/bin/env bash

while true; do
    
    sleep 120 # check battery_level every 2 minutes
    
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)' | awk '{s+=$1} END {print s}'`

    # if discharging, charge = "Discharging"
    # if    charging, charge = ""
    discharge=`acpi -b | grep -G -o Discharging`
    
    if [ $battery_level -le 10 ] && [ "$discharge" == "Discharging" ]
    then
        notify-send "Battery low" "Battery level is ${battery_level}%!"
    fi
    
done
