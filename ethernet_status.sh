#!/bin/sh

octeto1=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}' | awk -F "." '{print $1}')
octeto2=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}' | awk -F "." '{print $2}')
octeto3=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}' | awk -F "." '{print $3}')
octeto4=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}' | awk -F "." '{print $4}')


if wget -q --spider https://www.google.com; then
  echo "%{F#cf9fff} %{F#ffffff}$octeto1%{F#cf9fff}.%{F#ffffff}$octeto2%{F#cf9fff}.%{F#ffffff}$octeto3%{F#cf9fff}.%{F#ffffff}$octeto4"
else
  echo "%{F#cf9fff} %{F#ffffff}Disconnected"
fi


#  Blanco --> %{F#ffffff}
#  Morado --> %{F#cf9fff}
