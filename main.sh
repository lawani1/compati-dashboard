#!/bin/bash

# Enable colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
RESET='\033[0m'

while true; do
  clear
  echo -e "${CYAN}==============================="
  echo "     COMPATI Admin Dashboard"
  echo -e "===============================${RESET}"
  echo -e "${GREEN}1) System Information"
  echo "2) User Management"
  echo "3) Process Management"
  echo "4) Service Management"
  echo "5) Network Management"
  echo "6) Log Analysis"
  echo "7) Backup Utility"
  echo -e "8) System Update${RESET}"
  echo "q) Quit"
  echo "-------------------------------"
  
  read -p "Choose an option: " choice
  case "$choice" in
    1) bash "$PWD/modules/system_info.sh" ;;
    2) bash "$PWD/modules/user_management.sh" ;;
    3) bash "$PWD/modules/process_management.sh" ;;
    4) bash "$PWD/modules/service_management.sh" ;;
    5) bash "$PWD/modules/network_management.sh" ;;
    6) bash "$PWD/modules/log_analysis.sh" ;;
    7) bash "$PWD/modules/backup_utility.sh" ;;
    8) bash "$PWD/modules/system_update.sh" ;;
    q|Q) echo -e "${RED}Goodbye!${RESET}"; exit 0 ;;
    *) echo -e "${YELLOW}Invalid option!${RESET}"; read -p "Press Enter to continue..." ;;
  esac
done

