#!/bin/bash

##############################################################################
# 
# TPF-Runner.command 
# 
# The TPF-Runner starts the pre-configured TPF-TOOL Session.

# ©2018-2021 TPF-Team @ZHdK 
# 
##############################################################################

echo -e "\033[1;34mThe 'tpf-tool-advanced-bundle' corresponds to the previous basic idea of the TPF tools for eLearning" echo "the 'tpf-tool-basic' and 'tpf-tools-intermediate'. Advanced stands for modular application possibilities, for" 
echo "eLearning and Performances.(Simple to quite complex settings)."
echo "This is the 'tpf-tool-advanced-runner'. It opens all preconfigured tpf-tools for your tpf-tool-advancede session!" echo "Standard is the template 48kHz 'tpf-basic session' for Ardour6.6. This template allows a familiar mix for FoH."
echo "The special feature of the advanced bundle is the possibility to create a mix in Ambisonics or Binaural." 
echo "Ultragrid can be used, but does not have to. You can then save your own sessions, preferably in the directory" 
echo "folder/Applications/tpf-tools-intermediate/ardour-templates. The command 'tpf-tool-runner' "
echo "performs the following steps:\033[0m"
echo "------------------------------------------------------------"
echo "[1/1] Opens the DAW Ardour6.app -->the virtual digital mixer in Applications."
echo "[1/2] Asks you to select your pre-configured TPF session /ardour-templates." 
echo "[1/3] opens tpf-client.app to bind with Jacktrip."
echo "[1/4] Launches your preconfigured 'tpf-client-setting' settings. "
echo "[1/5] Connect your Ardour session to the TPF client."
echo "[1/6] The tpf-session is now running.....!"
echo "------------------------------------------------------------"
echo -e "\033[1;35mDetailed information can be found on this page\033[0m"
echo "https:/tpf-tools.postach.io "
echo "------------------------------------------------------------"
echo -e "\033[1;32m Would you like to continue [Y/n] \033[0m"
echo "-------------------------------------------------------------"
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
echo -e "\033[1;34mFor a Ambisonics or a Binaural Mix please open -->? \033[0m"
echo -e "\033[1;34mtpf-advanced template! \033[0m"
sleep 2
echo "Otherwise you can open the TPF Tools Basic 48kHz template for a FoH mix."
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
open /Applications/tpf-tools-advanced/tpf-client.app
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
cd /Applications/tpf-tools-advanced/tpf-audio-connections 
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
echo -e "\033[1;31m Stop the tpf-tools-advanced connection first! \031[0m"
sleep 4
echo -e "\033[1;32m then close/quite the tpf-client manualy! \033[0m"
sleep 2
echo -e "\033[1;32m Save your TPF-Session for Ardour6! \033[0m"
echo -e "\033[1;32m After that you can close Ardour6.5 manually! \033[0m"
sleep 2
echo "Goodbye"
sleep 2
exit

