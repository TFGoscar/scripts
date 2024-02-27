#!/bin/sh

cpu_usage=$(mpstat 1 1 | awk '$12 ~ /[0-9.]+/ {print 100 - $12"%"}' | head -1 | awk '{print $1}' )
cpu=$(echo $cpu_usage | grep -oP '\d+\.\d+' | cut -d'.' -f1)
ram=$(free | awk '/Mem:/ {printf "Porcentaje de memoria utilizada: %.2f%\n", ($3/$2)*100}' | awk '{print $5}' )
gpu=$(cat /sys/class/drm/card0/device/gpu_busy_percent)

real_cpu_usage=$(echo $cpu_usage | grep -oP '\d+\.\d+' | cut -d'.' -f1)
echo "%{F#cf9fff} %{F#ffffff}$cpu% %{F#cf9fff}| %{F#cf9fff} %{F#ffffff}$ram %{F#cf9fff}| %{F#cf9fff}󱍢 %{F#ffffff}$gpu% "

#%{F#cf9fff}
#%{F#ffffff}

