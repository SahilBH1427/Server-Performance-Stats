#!/bin/bash


echo -n "cpu usage: "
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "% used"}'


echo "Memory:"
free -m | awk '/Mem:/ { printf("Total: %s MB | Used: %s MB | Free: %s MB | Usage: %.2f%%\n", $2, $3, $4, ($3/$2)*100) }'


echo "Disk:" 
 df -h | grep "/dev/sdd" | awk '{print "Used: "$3 " Free: " $4 " Usage: " $5}'


echo "Top process by CPU usage :" 
ps aux --sort=-%cpu | head -5 


echo "Top process by Memory usage :"
ps aux --sort=-%mem | head -5
~                                   
