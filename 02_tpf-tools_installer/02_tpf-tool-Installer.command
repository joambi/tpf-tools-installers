#!/bin/bash
#########################################################################
# 
# INSTALLER for the TPF-TOOOLS #
# ©2018-2021 TPF team @ZHdK # 
# 
#########################################################################
echo  "This is the installer for the tpf-tools_2.0"
echo  "This script will install all the necessary tools in the right place."
echo  "Note: It is recommended to use the uninstaller first to get a clean install afterwards"
echo  "IMPORTANT: Make sure you have already created an Apple Aggregat Device!"
echo  "Info: https://support.apple.com/en-gb/HT202000 "
echo  "Otherwise, cancel the installation here, and do it again."
echo  "------------------------------------------------------------"
echo  "The steps of the installation:"
echo  "[0/0]Install Homebrew for better Terminal communication and other unix stuff."
echo  "[1/1] First we install the TPF tools folder to your -->/Applications."
echo  "[1/2] Installing the DAW Ardour6.app the virtual digital mixer to your -->/Applications."
echo  "[1/3] Install all the Ambisonics Stuff:"
echo  " - ICST Ambisonics Plugins /Libray/Audio/Plug-Ins/VST3"
echo  " - Sennheiser AMBEO A-B Format converter /Libray/Audio/Plug-Ins/VST3"
echo  " - dearVR Ambi micro  /Libray/Audio/Plug-Ins/VST3"
echo  " - IEM Plugin-Suite  /Libray/Audio/Plug-Ins/VST2"
echo  "[1/4] Installing the Ultragrid v1.6+ video components to your --> /Applications."
echo  "[1/5] Install this helper tools:"
echo  " - Amphetamine --> stop the sleep modus until the tpf session is running."
echo  " - Alfred4 --> the tpf-tool buttler."
echo  " - Brackets --> a better texteditor."
echo  " - Jaedo --> allows Ardour6 to work with Video."
echo  " - zoom.us --> for networking."
echo  " - Chrome browser for LifeLap.app"
echo  "[1/5] Now we close all TPF tools components and exit the installer."
echo  "[1/6] After that you can start your TPF sessions each with tpf-runner"
echo   "------------------------------------------------------------------------------"
echo "Detailed installtion and application information can be found on this website: "
echo "https:/tpf-elearning.postach.io/"
echo "--------------------------------------------------------------------------------"
echo "©2021 Johannes Schütt"
########################################################################################
sleep 4
echo -e "\033[1;32m It is important that you have 'JackOSX' installed! \033[0m"
sleep 2
echo "To do this, please use the '01_Installer-jackosx.command' "
sleep 2
echo -e "\033[1;32m It is also important that you have created an Aggregate Device in Audio Midi Setup! \033[0m"
sleep 2
echo "If all this has already been done, answer [y] to continue."
echo "if the answer is [n] the process is stopped."
sleep 4
while true; do
    read -p "Do you wish to continue [Y/n] " answer
    [[ $answer == "y" || $answer == "Y" || $answer == "" ]] && break
    [[ $answer == "n" || $answer == "N" ]] && exit 0
    echo "Please answer with 'y' or 'n'"
done
echo -e "\033[1;32m We now start the installation program for the tpf-tools? \033[0m"
sleep 2
cd ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS
sleep 2
echo "------------------------------------------------------------------------"
sudo spctl --master-disable
sleep 4
echo -e "\033[1;32m [1/1] Start to install homebrew for you \033[0m"
echo "If Xcode is not installed, the Apple command line material is also installed."
echo "This is part of a larger script for setting a mac for python development."
set -e
# Shared functions
pretty_print() {
  printf "\n%b\n" "$1"
}
# 
pretty_print "Here we go..."
# So it begins
# Homebrew installation
if ! command -v brew &>/dev/null; then
  pretty_print "Installing Homebrew, an OSX package manager, follow the instructions..." 
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  if ! grep -qs "recommended by brew doctor" ~/.zshrc; then
    pretty_print "Put Homebrew location earlier in PATH ..."
      printf '\n# recommended by brew doctor\n' >> ~/.zshrc
      printf 'export PATH="/usr/local/bin:$PATH"\n' >> ~/.zshrc
      export PATH="/usr/local/bin:$PATH"
  fi
else
  pretty_print "You already have Homebrew installed...good job!"
fi
# Homebrew OSX libraries
pretty_print "Updating brew formulas"
    brew update
pretty_print "Installing GNU core utilities..."
  brew install coreutils
pretty_print "Installing GNU find, locate, updatedb and xargs..."
  brew install findutils
pretty_print "Installing zenity for better user interaction"
  brew install zenity
pretty_print "Installing speedtest from speedtest.net"
  brew tap teamookla/speedtest
  brew update
  brew install speedtest --force  
printf 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> ~/.zshrc
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
echo "-----------------------------------------------"
sleep 2
function pause(){
   read -p "$*"
}
# ...
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo -e "\033[1;32m [1/1] First we install the TPF tools folder to your -->/Applications. \033[0m"
sudo cp -R TPF-Tools /Applications
sleep 4
sudo chmod -R 777 /Applications/TPF-Tools
cd /Applications/TPF-Tools
ls -1
echo "[1/1] The TPF Tools folder will be installed in your folder --> /Applications [Done]."
sleep 4
cd ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS
echo "------------------------------------------------------------------------"
sleep 2
echo -e "\033[1;32m [1/2]: You don't have to do anything, just wait...........\033[0m"
echo -e "\033[1;32m [1/2]: [1/2] Installing the DAW Ardour6.app the virtual digital mixer to your -->/Applications.\033[0m"
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
echo -e "\033[1;32m [1/3] Install all the Ambisonics Stuff:\033[0m"
echo  "Please follow the installer instruktions!"
echo  " - ICST Ambisonics Plugins /Libray/Audio/Plug-Ins/VST3"
echo  " - Sennheiser AMBEO A-B Format converter /Libray/Audio/Plug-Ins/VST3"
echo  " - dearVR Ambi micro  /Libray/Audio/Plug-Ins/VST3"
echo  " - IEM Plugin-Suite  /Libray/Audio/Plug-Ins/VST2"
sleep 4
open ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/ICST_AmbiPlugins_2.0.1_osx.pkg 
sleep 4
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
open ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Install\ Sennheiser\ AMBEO\ VR\ Mic\ A-B\ Converter\ 1.2.3.pkg
sleep 4
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
open ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/dearVR_AMBI_MICRO.pkg
sleep 4
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
open ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/IEMPluginSuite_v1.11.1.pkg 
sleep 4
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
echo -e "\033[1;32m [1/5] Install this helper tools: \033[0m"
echo  " - Amphetamine --> stop the sleep modus until the tpf session is running."
echo  " - Alfred4 --> the tpf-tool buttler."
echo  " - Brackets --> a better texteditor."
echo  " - Jaedo --> allows Ardour6 to work with Video."
echo  " - zoom.us --> for networking."
echo  " - Chrome browser for LifeLap.app"
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Amphetamine.app /Applications
sleep 4
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Alfred\ 4.app /Applications
sleep 4
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Brackets.app /Applications
sleep 4
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Google\ Chrome.app /Applications
sleep 4
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Ardour6.app /Applications
sleep 4
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Jadeo.app /Applications
sleep 4
sudo cp -R ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/uv-qt.app /Applications
sleep 4
open ~/Desktop/TPF-TOOL_2.0/TPF-TOOLS/Zoom.pkg
sleep 4
sudo spctl --master-enable
sleep 4
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
##############################################################################
#installtion finished
echo "------------------------------------------------------------------------"
echo "We open now  Ardour6.app"
sleep 2
echo "Please follow the Ardour6.app instructions!."
open -g -a /Applications/Ardour6.app 
sleep 4
echo -e "\033[1;31m  Open an Ardour session and make sure you are running at 48000kHz! \033[0m"
sleep 2
echo -e "\033[1;32m  For example create session with the name: test\033[0m"
sleep 2
echo -e "\033[1;32m  Start Ardour with JACK \033[0m"
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
echo -e "\033[1;32m Now open the Ardour6 standard template with 48000kHz to test the installation \033[0m"
sleep 4
open /Applications/TPF-Tools/ardourtemplates/48kHz_Default_TPF-Tools/48kHz_Default_TPF-Tools.ardour 
sleep 4
echo -e "\033[1;32m [1/2] Ardour6.app is installed and ready for the tpf-runner! --> [Done] \033[0m"
sleep 4
echo "----------------------------------------------------------------------------"
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo "----------------------------------------------------------------------------"
echo "[1/3] Installing the TPF client.v.1.1 to your -->/Applications." 
sleep 4
open /Applications/TPF-Tools/tpf-client.app
sleep 4
echo "[1/3] The tpf-client.app is installed and ready for the tpf-Runner"
sleep 4
echo -e "\033[1;32m We connect the audio from Ardour <---> to the TPF client, to test that they are connected.... \033[0m"
echo "--------------------------------------------------------------------------"
# init
function pause(){
   read -p "$*"
} 
# ...
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo "----------------------------------------------------------------------------"
sleep 2
cd /Applications/TPF-Tools/audio-connections 
ls -1
sleep 4
jmess -c default-audio-connection.xml
echo -e "\033[1;32m The audio is now connected between Ardour and the tpf client! [Done] \033[0m"
echo "--------------------------------------------------------------------------"
# init
function pause(){
   read -p "$*"
}
# ...
# call it
pause 'Press [Enter] key to continue...'
sleep 4
echo -e "\033[1;32m [1/5] We close now all TPF tools components and exit the installer. [Done] \033[0m"
echo " [1/1] We closed Ultragrid.app."
sleep 4
osascript -e 'quit app "uv-qt.app"'
echo -e "\033[1;32m We close TP-Client now...[Done] \033[0m"
# init
function pause(){
   read -p "$*"
}
# ...
pause 'Press [Enter] key to continue...'
sleep 4
osascript -e 'quit app "tpf-client.app"'
sleep 4
echo " [1/2] We closed tpf-client.app."
sleep 2
echo -e "\033[1;32m We close the Ardour6.app mow...[Done] \033[0m"
killall -d Ardour6 &> /dev/null && killall Ardour6 &> /dev/null
sleep 4
# init
function pause(){
   read -p "$*"
}
# ...
pause 'Press [Enter] key to continue...'
sleep 4
echo " [1/3] We closed Ardour6.app."
sleep 6
echo "------------------------------------------------------------------------"
sleep 4
echo "The installer has finished its task (-;."
sleep 2
echo "You can now also directly start your TPF seion with the tpf-runner.command"
sleep 4
echo -e "\033[1;32m [1/8]  --> remove TPF-TOOLS Folder from /Desktop [Done] \033[0m"
# init
function pause(){
   read -p "$*"
}
# ...   
pause 'Press [Enter] key to continue...'
sleep 4
sudo rm -R ~/Desktop/TPF-TOOL_2.0   
echo -e "\033[1;32m [1/9]  --> type [q] in the Video window for to close the video.\033[0m"
echo -e "\033[1;34m [1/9]  --> [Done] --> close.\033[0m"
sleep 2
osascript -e 'quit app "Terminal.app"'
sleep 2
exit 
