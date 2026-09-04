#!/bin/bash
# ==============================================================================
# Script Name : system_info.sh
# Description : System Information Reporting & Process Auditing Script
# Author      : Tezivindh (DEVOPS-T9)
# Usage       : ./system_info.sh
# Commands    : mkdir, touch, echo, df, ps, read -p, variables, > redirection
# ==============================================================================

# 1. Variables to store system information
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")
SYS_HOSTNAME=$(hostname)
SYS_USER=$(whoami)

echo "========================================================"
echo "          SYSTEM INFORMATION REPORTING SCRIPT           "
echo "========================================================"
echo "Report Timestamp : $CURRENT_DATE"
echo "System Hostname  : $SYS_HOSTNAME"
echo "Current Username : $SYS_USER"
echo "========================================================"
echo ""

# 2. Display Disk Usage
echo "------------------- [ DISK USAGE ] ---------------------"
df -h
echo ""

# 3. Interactive User Input using read -p
echo "------------------ [ USER INPUT ] ----------------------"
read -p "Enter Student Name: " STUDENT_NAME
read -p "Enter Roll / Enrollment Number: " ROLL_NUMBER
read -p "Enter Target Directory Name: " TARGET_DIR
read -p "Enter Target Log Filename: " TARGET_FILE

# Set defaults if blank
TARGET_DIR=${TARGET_DIR:-system_reports}
TARGET_FILE=${TARGET_FILE:-process.log}

echo ""
echo "Creating directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

TARGET_PATH="$TARGET_DIR/$TARGET_FILE"
echo "Creating file: $TARGET_PATH"
touch "$TARGET_PATH"

# 4. Display Running Processes (Top 10)
echo ""
echo "----------------- [ RUNNING PROCESSES ] ----------------"
ps aux | head -n 12

# 5. Output Redirection (>) storing running processes into the file
ps aux > "$TARGET_PATH"

echo ""
echo "========================================================"
echo "                    AUDIT SUMMARY                       "
echo "========================================================"
echo "Student Name       : $STUDENT_NAME"
echo "Roll Number        : $ROLL_NUMBER"
echo "Audited Hostname   : $SYS_HOSTNAME"
echo "Generated Directory: $TARGET_DIR"
echo "Generated File     : $TARGET_PATH"
echo "Status             : All running processes saved successfully using '>' redirection!"
echo "Log File Size      : $(wc -l < "$TARGET_PATH") lines"
echo "========================================================"
