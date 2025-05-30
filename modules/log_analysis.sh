#!/bin/bash

clear
echo "============================="
echo "     LOG ANALYSIS TOOL       "
echo "============================="

echo "1) View Authentication Logs (/var/log/auth.log)"
echo "2) View System Logs (/var/log/syslog)"
echo "3) View Kernel Logs (/var/log/kern.log)"
echo "4) Return to Main Menu"
read -p "Choose an option: " choice

case $choice in
  1) less /var/log/auth.log ;;
  2) less /var/log/syslog ;;
  3) less /var/log/kern.log ;;
  4) exit 0 ;;
  *) echo "Invalid option" ;;
esac

read -p "Press Enter to continue..."
