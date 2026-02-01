#!/bin/bash

set -e
echo "===== SERVER STATISTICS ====="
echo    

# ======= CPU ===========
echo "CPU Information:"
top -bn1 | grep "Cpu(s)"
echo

# ======= MEMORY ===========
echo "Memory usage in (MB):"
free -m 
echo

# ============= DISK USAGE =============
echo "the disk usage is:"
df -h
echo

echo "the system memory usage is:"
free -m 

# ============= SYSTEM UPTIME =============
uptime 

# ============= TOP PROCESSES =============

echo "Top memory consuming processes:"
ps aux --sort=-%mem | head -n 5

echo

echo "Top cpu consuming process:"

ps aux --sort=-%cpu | head -n 5


echo