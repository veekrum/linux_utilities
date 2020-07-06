#!/bin/bash 
set -xe

state=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2}'`
#echo $state
battery_per=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}'`
batt=${battery_per%\%}
#echo $batt
if [[ $state == "discharging" ]] && [[ $batt -lt 20 ]];then
    echo "Hajur saheb, Aba charge garne hoki?, $battery_per vaisakyo " | `/usr/games/xcowsay --image ./emptybatt.png`
elif [[ $state == "charging" && $batt -eq 98 ]] || [[ $state == "fully-charged" ]];then
    echo "Charger faldiye ni hunxa aba atti vo, $battery_per vaisakyo " | `/usr/games/xcowsay --image ./battfull.png`
elif [[ $state == "discharging" ]] && [[ $batt -lt 5 ]];then
    echo "computer is going to suspend in 30 seconds, please save your work" | `/usr/games/xcowsay --image ./emptybatt.png`
    sleep 30
    systemctl suspend
fi
