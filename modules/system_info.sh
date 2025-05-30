#!/bin/bash

clear
echo "==============================="
echo "      SYSTEM INFORMATION      "
echo "==============================="
echo ""

echo "Hostname: $(hostname)"
echo "OS Version: $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '\"')"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "CPU Info: $(lscpu | grep 'Model name')"
echo "Memory Usage:"
free -h

echo ""
read -p "Press Enter to return to the dashboard..."
#!/bin/bash

clear
echo "==============================="
echo "     NETWORK MANAGEMENT       "
echo "==============================="
echo ""

echo "Current IP Address: $(hostname -I)"
echo "Active Network Interfaces:"
ip a

echo ""
read -p "Press Enter to return to the dashboard..."
#!/bin/bash

clear
echo "==============================="
echo "     NETWORK MANAGEMENT       "
echo "==============================="
echo ""

echo "Current IP Address: $(hostname -I)"
echo "Active Network Interfaces:"
ip a

echo ""
read -p "Press Enter to return to the dashboard..."
