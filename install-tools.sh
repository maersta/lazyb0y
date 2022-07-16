#!/bin/bash

set -eu -o pipefail

sudo -n true
test $? -eq 0 || exit 1 "Run script using sudo please!"

echo Installing tools used by Lazyb0y
echo Probably already installed but lets have a look ...
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
echo 5 seconds to proceed ...
echo or
echo hit Ctrl+C to quit
echo -e "\n"
sleep 6

sudo apt-get install -y tig

echo Done! Ready to run Lazyb0y.sh
