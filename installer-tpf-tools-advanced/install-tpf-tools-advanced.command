#!/bin/bash

echo  "------------------------------------------------------------"
echo -e "\033[1;33m INSTALLER for the TPF-TOOOLS-ADVANCED \033[0m"
echo -e "\033[1;33m ©2018-2021 TPF team @ZHdK \033[0m"
echo  "------------------------------------------------------------"
echo  "This is the installation program for the tpf-advanced tools"
echo  "This script installs all the necessary tools in the right place."
echo ""
echo -e "\033[1m Note:It is recommended that you use the uninstaller first and then do a new installation \033[0m"
echo -e "\033[1;31m IMPORTANT: Make sure you have already created an Apple Aggregate device! \033[0m"

echo -e "\033[1;34m Info: https://support.apple.com/en-gb/HT202000  \033[0m"
echo  " Otherwise cancel this installation here and repeat the process after creating an aggregate device."
echo  "------------------------------------------------------------"
echo -e "\033[1mInstallation steps:\033[0m"
echo "[1/1] First we install the tpf-tools-advanced in your Applications / folder."
echo "[1/2] Now let's install the necessary plug-ins for Ambisonics & Binaural:"
echo "      ICST Ambisonics Plugins /Libray/Audio/Plug-Ins/VST3 --> for Ambisonics"
echo "      dearVR Ambi micro  /Libray/Audio/Plug-Ins/VST3  --> Binaural"
echo "      Sennheiser AMBEO VR Mic A-B Converter /Libray/Audio/Plug-Ins/VST"
echo "      IEM Plugin-Suite  /Libray/Audio/Plug-Ins/VST2 --> for Reverb"
echo "[1/3] Installation of Ultragrid v1.6 +, the video component> / Applications"
echo "[1/4] If everything went well, you can start your TPF sessions with the 'tpf-running' command."
echo "------------------------------------------------------------------------------"
echo "Further information on installation and use can be found on this website:  "
echo "https:/tpf-elearning.postach.io/"
echo "--------------------------------------------------------------------------------"
echo "©2021 Johannes Schütt"
#start code
echo ""
echo -e "\033[1;34m[1/1] First we install the tpf-tools-advanced folder to your -->/Applications. \033[0m"
echo  "Please follow the installer instruktions!"
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
<<<<<<< HEAD
sleep 2
sudo spctl --master-disable
sleep 4
cd /Volumes/TPF-TOOLS-ADVANCED/installer-tpf-tools-advanced/pkg
sleep 2
echo -e "\033[1;33m when the installer is finished; press continue! \033[0m"
open /Volumes/TPF-TOOLS-ADVANCED/installer-tpf-tools-advanced/pkg/installer-tpf-tools-advanced.pkg
=======
cd /Volumes/TPF-TOOLS-ADVANCED/installer-tpf-tools-advanced/pkg
sleep 2
echo -e "\033[1;33m when the installer is finished; press continue! \033[0m"
open /Volumes/TPF-TOOLS-ADVANCED/installer-tpf-tools-advanced/pkg/install-tpf-tool-advanced.pkg
>>>>>>> 507cde45748f398f76ac55637d8660a3dd1c3335
sleep 6
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
echo -e "\033[1;32m[1/1] the tpf-tools-advanced are now installed! [Done].\033[0m"
sleep 2
echo ""
echo -e "\033[34m[1/2]Now let's install the necessary plug-ins for Ambisonics & Binaural:\033[0m"
sleep 2
echo -e "\033[0;32m[1/2] The ICST Ambisonics Plugins /Libray/Audio/Plug-Ins/VST3 --> for Ambisonics. \033[0m"
open ICST_AmbiPlugins_2.1.0_osx.pkg
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
echo -e "\033[1;32m[1/2] the ICST Ambisonics Plugins are now installed! [Done].\033[0m"
echo ""
echo -e "\033[1;32m [1/3]  Now we install dearVR Ambi micro  /Libray/Audio/Plug-Ins/VST3\033[0m"
open dearVR_AMBI_MICRO.pkg 
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
echo -e "\033[1;32m[1/3] the dearVR_AMBI_MICRO are now installed! [Done].\033[0m"
echo ""
echo -e "\033[1;34m [1/4]  Now we install IEM Plugin-Suite  /Libray/Audio/Plug-Ins/VST2 \033[0m"
open IEMPluginSuite_v1.11.1.pkg
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
echo -e "\033[1;32m[1/4] the IEMPluginSuite_v1.11.1 are now installed! [Done].\033[0m"
echo ""
<<<<<<< HEAD
echo -e "\033[1;34m [1/5] Now we install Sennheiser-AMBEO-VR-Mic-A-B-Converter /Libray/Audio/Plug-Ins/VST2 \033[0m"
open ~/Desktop/installer-tpf-tools-advanced/pkg/Install\ Sennheiser\ AMBEO\ VR\ Mic\ A-B\ Converter\ 1.2.3.pkg 
=======
echo -e "\033[1;34m [1/4]  Now we install Install Sennheiser AMBEO VR Mic A-B Converter 1.2.3  /Libray/Audio/Plug-Ins/VST2 \033[0m"
open /Volumes/TPF-TOOLS-ADVANCED/installer-tpf-tools-advanced/pkg/Install\ Sennheiser\ AMBEO\ VR\ Mic\ A-B\ Converter\ 1.2.3.pkg
>>>>>>> 507cde45748f398f76ac55637d8660a3dd1c3335
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
<<<<<<< HEAD
echo -e "\033[1;32m[1/5] the Sennheiser-AMBEO-VR-Mic-A-B-Converter1.2.3 are now installed! [Done].\033[0m"
=======
echo -e "\033[1;32m[1/4] the Sennheiser AMBEO VR Mic A-B Converter 1.2.3 are now installed! [Done].\033[0m"
>>>>>>> 507cde45748f398f76ac55637d8660a3dd1c3335
echo "------------------------------------------------------------------------" 
sleep 2
echo -e "\033[1;34m The installation program has finished its tasks \033[0m"
sleep 2
echo "You can now also directly start with the tpf-runner.command"
sleep 4
<<<<<<< HEAD
echo -e "\033[1;34m [1/6]  --> remove TPF-TOOLS Folder from /Desktop [Done] \033[0m"
=======
echo -e "\033[1;34m [1/5]  --> remove TPF-TOOLS Folder from /Desktop [Done] \033[0m"
>>>>>>> 507cde45748f398f76ac55637d8660a3dd1c3335
# init
function pause(){
   read -p "$*"
}
# ...   
pause 'Press [Enter] key to continue...'
hdiutil unmount /Volumes/TPF-TOOLS-ADVANCED -force
# init
function pause(){
   read -p "$*"
}
# ...   
pause 'Press [Enter] key to continue...'
# init
function pause(){
   read -p "$*"
}
# ...   
pause 'Press [Enter] key to continue...'
echo -e "\033[1;34m [1/9]  --> [Done] --> close.\033[0m"
sleep 4
<<<<<<< HEAD
sudo spctl --master-enable
sleep 4
=======
>>>>>>> 507cde45748f398f76ac55637d8660a3dd1c3335
osascript -e 'quit app "Terminal.app"'
sleep 2
exit 0