# System Monitoring Script (sysmon.sh)

## 📌 Overview
This repository contains a simple **System Monitoring Shell Script** (`sysmon.sh`) that collects and logs key system metrics every **5 minutes**.  
The log file is stored in `/var/log/sysmon.log`.

## 🔧 Metrics Monitored
- **CPU** → collected using `top`
- **Memory** → collected using `free -h`
- **Disk** → collected using `df -h /`
- **Network Usage** → collected from /proc/net/dev

## 🚀 How It Works
The script runs in an infinite loop:
1. Collects the above system metrics.
2. Appends them to `/var/log/sysmon.log`.
3. Sleeps for 5 minutes before repeating.

## ▶️ Running the Script
1. Make the script executable:
   ```bash
   chmod +x sysmon.sh
   ./sysmon.sh
