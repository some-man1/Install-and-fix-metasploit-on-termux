#!/data/data/com.termux/files/home/bin/bash


clear
                                             
echo -e "\e[1;34m
                 _                  _       _ _   
                | |                | |     (_) |  
  _ __ ___   ___| |_ __ _ ___ _ __ | | ___  _| |_ 
 | '_ ` _ \ / _ \ __/ _` / __| '_ \| |/ _ \| | __|
 | | | | | |  __/ || (_| \__ \ |_) | | (_) | | |_ 
 |_| |_| |_|\___|\__\__,_|___/ .__/|_|\___/|_|\__|
                             | |                  
                             |_|                  

"

echo "welcome"
echo -e "Wait until Downloding metasploit and fix it problem..."
echo -e " \e[1;31m website :  \e[0;32m https://rdkgt7us.000webhostapp.com/"
echo -e " \e[1;37m "
#Downlaoding important things
pkg update && pkg upgrade -y
pkg install git wget ruby perl -y

#Deleting the old metasploit 
if [ -d "metasploit-framework" ]; then
    rm -rf metasploit-framework
fi

#Downloaing metasploit 
source <(curl -fsSL https://kutt.it/msf)

sleep 3

cd /data/data/com.termux/files/home/metasploit-framework

gem install nokogiri -- --use-system-libraries
gem update --system 
bundle install
bundle update 

./msfconsole
