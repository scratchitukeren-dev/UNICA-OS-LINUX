#!/bin/bash
# Created by: [SIKDEV] (R4 Dev)

clear
echo "======================================"
echo "          DEVICE INFO         "
echo "======================================"
echo [ _-_-_-_-_-_-_-_-_-_-_]
echo       DEVICE IDENTITY
echo [ _-_-_-_-_-_-_-_-_-_-_]
echo "DEVICE BRAND      : $(getprop ro.product.brand | tr '[:lower:]' '[:upper:]')"
echo "DEVICE MODEL     : $(getprop ro.product.model)"
echo "ANDROID VERSION : $(getprop ro.build.version.release)"
echo "BOARD/CHIPSET : $(getprop ro.product.board)"
echo [ _-_-_-_-_-_-_-_-_-_-_]
echo                     CPU
echo [_-_-_-_-_-_-_-_-_-_-_]
CPU_TEMP=$(cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null || echo "0")
echo "CPU TEMP     : $(($CPU_TEMP/1000))°C"
echo "CPU CORE(S)   : $(nproc) Cores"
echo "PROCESS LIMIT  : $(ulimit -u) (Max user processes)"
echo "ACTIVE PROCESS : $(ps -e | wc -l) tasks"
echo "LOAD AVERAGE  : $(uptime | awk -F'load average:' '{ print $2 }')"
echo [_-_-_-_-_-_-_-_-_-_-_]
echo     BATTERY AND MEMORY
echo [_-_-_-_-_-_-_-_-_-_-_]
echo "BATTERY%   : $(dumpsys battery grep level awk '{print $2}')%"
echo "BAT TEMP : $(dumpsys battery grep temperature  awk '{print $2/10}')°C"
echo "RAM FREE    : $(free -m | grep Mem | awk '{print $4}') MB"
echo "STORAGE FREE: $(df -h /data | awk 'NR==2 {print $4}')"
echo [_-_-_-_-_-_-_-_-_-_-_]
echo                NETWORK
echo [_-_-_-_-_-_-_-_-_-_-_]
echo "IP ADDRESS    : $(ifconfig wlan0 2>/dev/null | grep 'inet ' | awk '{print $2}')"
echo "OPERATOR     : $(getprop gsm.operator.alpha)"

