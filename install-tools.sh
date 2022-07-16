#!/bin/bash
clear
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m  Lazyb0y tools installer\e[0m"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
set -eu -o pipefail

sudo -n true
test $? -eq 0 || exit 1 "Run script using sudo please!"

while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
  nmap
	nikto
	whatweb
	gobuster
	dirb
	wpscan
	sqlmap
EOF
)

echo Ready to install tools ...
echo Wait 5 seconds to proceed or hit Ctrl+C to quit
echo -e "\n"
sleep 6

sudo apt-get install -y tig

clear
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m  Done! Ready to run Lazyb0y.sh\e[0m"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
