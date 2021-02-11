#!/bin/sh
LoggedInUser=$( stat -f%Su /dev/console )
LoggedInUID=$(stat -f %u /dev/console)

if [[ $LoggedInUser = "root" ]]; then
echo "No user logged in - exiting script"
exit 0
fi
# Licence dialog!
# Sie müssen die Datei »COPYING« in denselben Ordner wie dieses Skript ablegen.
FILE=`dirname $0`/LICENSE.txt
zenity --text-info \
       --title="LICENSE" \
       --filename=$FILE \
       --checkbox="I have read and accept the conditions."
cd /Applications/TPF-Tools
# Abfrage
zenity --question \
--title="Choosen tpf-tool" \
--window-icon= /Applications/TPF-Tools/pictures/tpf.png \
--ok-label="tpf-party" \
--cancel-label="tpf-client" \
--text="<span background=\"#1A4986\"font=\"DejaVu Sans 24\"foreground=\"#FCE6AF\">
\n which tpf-tool?
\n
\do you like to open?
\
</span>" ; \

if [ $? = 0 ];then  
open /Applications/TPF-Tools/tpf-party.app 
exit
else
open /Applications/TPF-Tools/tpf-tool_runner.command
exit
fi

exit
logout