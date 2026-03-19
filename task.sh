#!/bin/bash

echo "===== System Information ====="

# System Hostname
echo "Hostname:"
hostname
echo

# Operating System
echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME
echo

# System uptime
echo "System Uptime:"
uptime -p
echo

# Linux Kernel Version
echo "Kernel Version:"
uname -r
echo

# CPU Information
echo "CPU Information:"
lscpu | grep "Model name"
echo

# Memory information
echo "Memory (Human Readable):"
free -h
echo

# Network Interfaces
echo "Network Information:"
ip addr
echo

# Filesystem utilization
echo "Filesystem Usage:"
df -hT
echo

# Last 5 errors from syslog
echo "Last 5 Errors in Log:"
grep -i error /var/log/syslog | tail -5
echo
