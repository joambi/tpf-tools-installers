#!/bin/bash
##############################################################################
# 
# tpf-runner.command 
# 
# The tpf-runner starts the pre-configured sessions for the tpf-tools.
#
# ©2018-2021 Johannes Schuett and the tpf-team @ZHdK 
# 
##############################################################################

echo "This is the 'tpf-runner for the tpf-tools-intermediate'."
echo "The 'tpf-runner' opens all preconfigured tpf-tools for your tpf-intermediate session!"
echo "Default is the template 48kHz 'tpf-basic session' for Ardour6."
echo "After that, you can save your own sessions and it is best to save them in the folder:"
echo "/Applications/tpf-tools-intermediate/ardour-templates."
echo "------------------------------------------------------------"
echo "The command ' tpf-runner' performs the following steps:"
echo "------------------------------------------------------------"
echo -e "\033[1;32m [1/1]Open Ardour6.app for you, the virtual digital mixer in Applications.\033[0m"
echo -e "\033[1;32m [1/2]Please select your pre-configured TPF session in the folder 'ardour-templates'!\033[0m" 
echo -e "\033[1;32m      or open the tpf-intermediate-basic.ardour session\033[0m"
echo -e "\033[1;32m [1/3]now open the tpf-client for you.\033[0m"
echo -e "\033[1;32m [1/4]Load your pre-configured tpf-client-setting settings.\033[0m"
echo -e "\033[1;32m      (e.g. tpf-intermediate-basic.txt)\033[0m"
echo -e "\033[1;32m [1/5]Now, connect the audio of your Ardour session to the TPF-Client.app.\033[0m"
echo -e "\033[1;32m      This is done by loading the correspond\033[0m"
echo -e "\033[1;32m [1/6]If it flickers green in the tpf-client, the audio of your tpf session \033[0m"
echo -e "\033[1;32m      is connected! Your session is now running.....!\033[0m"
echo "------------------------------------------------------------"
echo "Detailed information can be found on this page: "
echo -e "\033[1;34m https:/tpf-tools.postach.io"
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
sleep 4
open /Applications/Ardour6.app
sleep 4
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
echo -e "\033[1;32m open the 'tpf settings'in the tpf-client.app and write <yourname> of your location, then press [Enter].\033[0m"
echo -e "\033[1;32mSave this setting by clicking save*!\033[0m!\033[0m"
echo "You can now close the tpf client settings window."
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
echo -e "\033[1;32m Now the audio connection between the ardour DAW and the tpf client must be established.\033[0m"
echo "Your predefined connection xml files can be found in the folder:"
echo "'tpf-audio-connections' folder."
echo "The runner shows them a selection of their files in the next step."
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
echo "To connect to the server, press the small rectangle to the left of your name."
sleep 2
echo "When you see a yellow flashing square --> click on it and it will change to blue."
echo "Then they are connected to the called location."
echo "You need to connect to each incoming destination like this."
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
echo -e "\033[1;32m After that you can close Ardour6.app manually! \033[0m"
sleep 2
echo "Goodbye"
sleep 2
exit