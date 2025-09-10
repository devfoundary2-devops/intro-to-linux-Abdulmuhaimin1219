#!/bin/bash
# sysmon.sh - System  monitory
# Logs CPU, RAM, Disk memory , and Network usage every 5 minutes

SYSLOG="/var/log/sysmon.log"

while true; do
  echo "----" >> $SYSLOG
  echo "DATE: $(date)" >> $SYSLOG
  echo "" >> $SYSLOG

  # CPU 
  echo "[CPU USAGE]" >> $SYSLOG
  top -bn1 | grep "Cpu(s)" >> $SYSLOG
  echo "" >> $SYSLOG

  # Memory 
  echo "[MEMORY USAGE]" >> $SYSLOG
  free -h >> $SYSLOG
  echo "" >> $SYSLOG

  # Disk 
  echo "[DISK USAGE]" >> $SYSLOG
  df -h / >> $SYSLOG
  echo "" >> $SYSLOG

  # Network usage ( INGRESS AND EGRESS)
  echo "NETWORK (eth0):" >> $SYSLOG
  grep "etho" /proc/net/dev >> $SYSLOG

  # Sleep for 5 minutes  is 300seconds
  sleep 300
done


