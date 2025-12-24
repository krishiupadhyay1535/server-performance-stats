#!/bin/bash 

echo "==========================================="

echo "===========server_performance=============="

echo "==========================================="


# CPU useg 

echo 
echo "CPU USE :"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " 100 - $8 "%"}'


# disk useg


echo 
echo "system use"
df -h

# top 5 cpu  process

echo 
echo "top 5 processes :"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# top 5 mem processes 

echo 
echo "top 5 mom processes :"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6



echo "============================================"
echo "=============END OF THE REPORT=============="
echo "============================================"



