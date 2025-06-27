#!/data/data/com.termux/files/usr/bin/bash

green="\e[92m"
red="\e[91m"
end="\e[0m"

echo -e "${green}=============================="
echo -e "     ANW®©™ AUTO INSTALLER"
echo -e "  Powered by Abg Ayob 🔥"
echo -e "==============================${end}"

# Setup Termux storage
termux-setup-storage
sleep 2

# Update & upgrade
pkg update -y && pkg upgrade -y

# Install essential packages
pkg install git python curl wget -y

# Clone repo
cd $HOME
rm -rf termuxanw
git clone https://github.com/ayob77/termuxanw.git
cd termuxanw
chmod +x *.sh

# Prompt user key
echo -e "${green}[?] Sila masukkan kunci ANW anda:${end}"
read -p "KEY: " user_key

# Validate key
if grep -Fxq "$user_key" key.txt; then
  echo -e "${green}[✓] Kunci sah! Memulakan skrip...${end}"
  bash start.sh
else
  echo -e "${red}[✗] Kunci salah. Sila cuba semula.${end}"
  exit 1
fi
