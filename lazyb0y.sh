#!/bin/bash

clear
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m  LAZYB0Y v1.0 - BY MAERSTA\e[0m"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo -e "\e[1;37m Target URL or IP adress:\e[0m"
echo -e "\n"
read varname
echo -e "\n"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m  GENERATED COMMANDS\e[0m"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo -e "\e[1;37m nmap -sV $varname \e[0m"
echo -e "\n"
echo -e "\e[1;37m nikto -h $varname \e[0m"
echo -e "\n"
echo -e "\e[1;37m gobuster dns -d $varname -w wordlists/dns.txt\e[0m"
echo -e "\n"
echo -e "\e[1;37m gobuster dir -u $varname -w wordlists/dir.txt\e[0m"
echo -e "\n"
echo -e "\e[1;37m dirb $varname -w dir.txt \e[0m"
echo -e "\n"
echo -e "\e[1;37m wpscan $varname \e[0m"
echo -e "\n"
echo -e "\e[1;37m sqlmap -u "$varname" \e[0m"
echo -e "\n"
echo -e "\e[1;37m ncrack -U wordlists/users.txt -P wordlists/passwords.txt ftp://$varname\e[0m"
echo -e "\n"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m  SAVING OUTPUT TO TARGET LOGS\e[0m"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
nslookup $varname >> logs/targets.txt
echo -e "\n"
echo -e "\e[1;37m Target saved in logs\e[0m"
echo -e "\n"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m  ALL DONE! Thanks for using Lazyb0y\e[0m"
echo -e "\e[31m000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
