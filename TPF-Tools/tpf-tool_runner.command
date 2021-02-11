#!/bin/bash

##############################################################################
# 
# TPF-Runner.command 
# 
# The TPF-Runner starts the pre-configured TPF-TOOL Session.
# The best way to configure a TPF-Session is together with the TPF-Wizard!
# ©2018-2021 TPF-Team @ZHdK 
# 
##############################################################################
echo " This is the tpf-runner,"
echo " The tpf-runner open's all pre-configured tpf-tools for your tpf-session!"
echo " Default is the 48kHz_Default_TPF-Tools template"
echo " Note: The best way to configure a TPF-Session is together with the TPF-Wizard! "
echo "------------------------------------------------------------"
echo "[1/1] open Ardour6.app -->the virtual digital mixer to /Applications". 
echo "[1/2] choose your pre-configured tpf-session /ardourtemplates or ?" 
echo "[1/3] open the TPF-Client.app"
echo "[1/4] load your pre-configured tpf-client settings."
echo "[1/5] Connect your Ardour-session to the TPF-Client"
echo "[1/6] open your pre-configured video setup."
echo "[1/7] the tpf-session is runnging now.....!"
echo "-------------------------------------------------------------"
echo "Detailed information can be found on this page: "
echo "https:/tpf-elearning.postach.iopostc-download-installation-and-pre-configuration"
echo "------------------------------------------------------------"
echo "©2021 Johannes Schütt"
echo "-------------------------------------------------------------"
##############################################################################################
# Here starts the script
while true; do
    read -p "Do you wish to continue [Y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
    echo "Please answer with 'y' or 'n'"
done
echo -e "\033[1;32m We now start open the tpf-tools? \033[0m"
sleep 2
echo "Please choose your pre-configured tpf-session!"
sleep 2
echo "Otherwise you can open the 48kHz_Default_TPF-Tools template"
sleep 4
open /Applications/Ardour6.app
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo "----------------------------------------------------------------------------"
echo -e "\033[1;32m  Start the tpf-client \033[0m"
open /Applications/TPF-Tools/tpf-client.app
echo "Load your pre-configured session setting!"
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo "----------------------------------------------------------------------------"

echo "welches xml file möchtest du laden?"

cd /Applications/TPF-Tools/audio-connections 
ls -1
echo "copy & paste the xml file that you like to choose!"
 read -p "Do you wish to open this connection file?      " input
 input="$input"
  echo "$input"
  jmess -D
  sleep 2
  jmess -c "$input"
echo -e "\031[1;32m Call your server now! \033[0m"
echo " Then call / take off the other destinations!"
sleep 4
echo "You are connected now!"
echo "---------------------------------------------------------------------------"
echo -e "\033[1;32m Stop the tpf-tools manualy! \033[0m"
echo "[1/1]] First the tpf-client!"
sleep 2
echo -e "\033[1;32m Save your TPF-Session for Ardour6! \033[0m"
echo "[1/2 Second quite Ardour after saving!]"
echo "Goodby --> but I'm still running for you........"
exit