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

echo "This is the 'tpf-tool-intermediate-runner'."
echo "The 'tpf-tool-intermediate-runner' opens all "
echo "preconfigured tpf-tools for your tpf-tool-intermediate session!"
echo "Default is the template 48kHz 'tpf-basic session' for Ardour6.5."
echo "After that, you can save your own sessions and it is best to save them in the "
echo "/Applications/tpf-tools-intermediate/ardour-templates folder."
echo "The command ' tpf-tool-intermediate-runner' performs the following steps:"
echo "------------------------------------------------------------"
echo -e "\033[1;32m [1/1] Open Ardour6.app -->the virtual digital mixer in Applications.\033[0m"
echo -e "\033[1;32m [1/2] please choose your preconfigured TPF session /ardour-templates \033[0m" 
echo -e "\033[1;32m       or open the tpf-basic session for ardour6.5 \033[0m"
echo -e "\033[1;32m [1/3] open the tpf-client.app \033[0m"
echo -e "\033[1;32m [1/4] load your preconfigured tpf-client preference settings. \033[0m"
echo -e "\033[1;32m [1/5] connect your ardour session to the TPF client.\033[0m"
#echo -e "\033[1;32m [1/6] open the preconfigured video preference.\033[0m"
echo -e "\033[1;32m [1/6] the tpf session is now running.....!\033[0m"
echo "------------------------------------------------------------"
echo "Detailed information can be found on this page: "
echo -e "\033[1;34m https:/tpf-tools.postach.io "
echo -e "\033[1;32m ------------------------------------------------------------\033[0m"
echo "©2021 Johannes Schuett"
echo "------------------------------------------------------------"
echo -e "\033[1;32m Would you like to continue [Y/n] \033[0m"
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
echo "Otherwise you can open the TPF-Tools-Basic 48kHz template"
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
echo -e "\033[1;32m Start the tpf-client \033[0m"
open /Applications/tpf-tools-intermediate/tpf-client.app
echo -e "\033[1;32m open tpf settings and write <yourname> then press [Enter].\033[0m"
echo -e "\033[1;32m save this setting by clicking save*.!\033[0m"
echo "You can now close the tpf client settings window"
echo "The next time you open the tpf-basic session, the 'tpf-client' "
echo "will automatically open the last saved settings.!"
sleep 4
echo "Otherwise load your desired predefined settings from the folder <tpf-settings>.!"
# init
function pause(){
   read -p "$*"
} 
# ..
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo "----------------------------------------------------------------------------"
echo -e "\033[1;32m  Now the audio connection between ardour and the tpf-client has to be created.  \033[0m"
echo "Your predefined connection xml files can be found in the "
echo "<tpf-audio-connections> folder."
echo "The runner shows in them a selection in the next step."
sleep 4
cd /Applications/tpf-tools-intermediate/tpf-audio-connections 
ls -1
sleep 4
echo -e "\033[1;32m copy & paste the xml file that you like to choose! \032[0m"
 read -p "Do you wish to open this connection file?           " input
 input="$input"
  echo "$input"
  jmess -D
  sleep 2
  jmess -c "$input"
echo -e "\031[1;32m Call your server now! \033[0m"
echo "To connect to the server press the small rectangle to the left of your name."
sleep 2
echo "When you see a yellow flashing square --> click on it and it will change to blue."
sleep 2
echo "Then your are connected!"
sleep 4
echo "Have a great session!!"
echo "---------------------------------------------------------------------------"
echo -e "\033[1;31m Stop the tpf-tools-intermediate connection first! \031[0m"
sleep 4
echo -e "\033[1;32m then close/quite the tpf-client manualy! \033[0m"
sleep 2
echo -e "\033[1;32m Save your TPF-Session for Ardour6! \033[0m"
echo -e "\033[1;32m After that you can close Ardour6.5 manually! \033[0m"
sleep 2
echo "Goodbye"
sleep 2
exit

