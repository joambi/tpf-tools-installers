#!/bin/bash

### Script designed to be placed in a "Run Shell Script" action in Automator
### This allows the administrator password to be called, and used in the script where sudo is required
### Beware: the inputted password is used in echo commands
### Usage: Use `sudo` without a path to ensure the `sudo` function is called rather than the actual command
# install jackdmp (JackAudioKit with Midi) for macOS 10.15+ Catalina #
echo " Installer for JackOSX v.0.92_b3"
echo " This script installs all the necessary jack bin & frameworks in the right place."
echo -e "\033[1;32mNote: This procedure requires a restart of your machine! \033[0m"
echo "------------------------------------------------------------"
echo "©2021 Johannes Schuett"
echo "------------------------------------------------------------"
echo -e "\033[1;32m Do you wish to install JackOSX.0.92_b3? \033[0m"
sleep 2
while true; do
    read -p "Do you wish to continue [Y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
    echo "Please answer with 'y' or 'n'"
done
sleep 2
echo "install the JackOSX stuff!"
cd ~/Desktop/install_JackOSX
echo "-----------------------------------------------"
sudo spctl --master-disable
sleep 4
echo -e "\033[1;32m [1/1]: Install Jmess to /usr/local/bin \033[0m"
sleep 4
sudo cp ~/Desktop/install_JackOSX/jmess /usr/local/bin
sudo chmod 755 /usr/local/bin/jmess
sleep 2
echo -e "\033[1;32m [1/1] jmess is installed  --> [Done]  \033[0m"
echo "-----------------------------------------------"
echo -e "\033[1;32m [1/2]: Install JackOSX Folder in /Applications \033[0m"
echo "-----------------------------------------------"
sleep 2
open ~/Desktop/install_JackOSX/JackOSX.0.92_b3.pkg
echo -e "\033[1;32m Please follow the installer instructions! \033[0m"
sleep 2
echo -e " \033[1;31m Note: Do not click on Restart before the script has finished! \033[0m"
function pause(){
   read -p "$*"
}
# ...
# call it
echo -e "\033[1;32m [1/2]: Install JackOSX Folder in /Applications \033[0m"
pause 'Press [Enter] key to continue...'
echo "-----------------------------------------------"
sleep 4
sudo spctl --master-enable
echo -e " \033[1;32m Note: The JackPilot.app it dosent run on 64bit maschine! \033[0m"
echo -e " \033[1;32m I remove this dead program now. \033[0m"
rm -rif /Applications/Jack/JackPilot.app
sleep 2
echo -e "\033[1;34m [Done] \033[0m"
echo "-----------------------------------------------"
echo -e "\033[1;32m [1/2]: We test now the installation: \033[0m"
echo -e "\033[1;32m [1/2]: First Jackdmp \033[0m"
/usr/local/bin/jackdmp
sleep 4
echo -e "\033[1;32m [1/2]: Second Jmess \033[0m"
/usr/local/bin/jmess
sleep 4

rm -rif ~/Desktop/install_JackOSX
sleep 4
hdiutil eject /Volumes/JackOSX\ for\ tpf-tools
sleep 4
echo -e "\033[1;32m [1/4] You can click restart now! --> [Done] \033[0m"
sleep 2
echo -e "\033[1;34m [1/11]  --> [Done] --> close.\033[0m"
sleep 2
osascript -e 'quit app "Terminal.app"'
sleep 2
exit 