#!/bin/zsh
##############################################################################################
# deinstall jackdmp (JackAudioKit with Midi) for macOS 10.15+ Catalina,
# Generate application uninstallers for macOS.
##############################################################################################
echo "Welcome to the TPF-TOOL Uninstaller"
echo " Please run this as Root"
echo "The following packages will be REMOVED:"
echo "Uninstalling now all TPF-Tools-intermediate!"
echo "Requires an admin password!"
echo "The following packages will be REMOVED:"
echo "tpf-client"
echo "Ultragrid"
echo "Ardour6.0.app"
echo "tpf scripts"
echo "tpf-folder"
echo -e "\033[1;31m Make sure you have backed up all templates and Ardour session's!!!! \033[0m"
echo "------------------------------------------------------------------------"
# Need to replace these with install preparation script
# VERSION=2.0
# PRODUCT=tpf-client
echo "Application uninstalling process started"
echo "-----------------------------------------------------------"
echo "uninstall now Ardour6.app"
sudo rm -r /Applications/Ardour6.app
echo "[1/1] [DONE] Successfully deleted Ardour6.app"
sleep 4
echo "uninstalling uv-qt.app"
sudo rm -r /Applications/uv-qt.app
echo "[1/2] [DONE] Successfully deleted uv-qt.app"
sleep 4
echo "remove the TPF-Tools Folder"
sudo rm -r /Applications/TPF-Tools
echo "[1/3] [DONE] Successfully deleted TPF-TOOL Folder."
sleep 4
echo "[1/10] [DONE] "
echo "-----------------------------------------------------------"
echo -e "\033[1;34m [1/11]  --> [Done] --> close.\033[0m"
sleep 2
osascript -e 'quit app "Terminal.app"'
sleep 2
exit 
