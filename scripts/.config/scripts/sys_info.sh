#!/bin/bash

# 1. Get CPU usage (calculates user + system percentage)
CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

# 2. Get Memory usage
MEM=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')

# 3. Get Storage disk usage (change "/" if your main drive is mounted elsewhere)
DISK=$(df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 ")"}')

# 4. Format the multi-line tooltip string (\n creates a line break)
TOOLTIP="󰍛 CPU Usage: $CPU\n󰘚 Memory:    $MEM\n󰋊 Disk Space: $DISK"

# 5. Output JSON for Waybar (using  as the bar icon)
echo "{\"text\": \"\", \"tooltip\": \"$TOOLTIP\"}"