#!/usr/bin/env bash
cd /Applications/tpf-tools-intermediate/tpf-audio-connections
ls -1
echo "copy & paste the xml file that you like to choose!"
read -p "Do you wish to open this connection file?      " input
 input="$input"
 echo "Load your connection xml-file:"
  echo "jmess -c $input"

  jmess -D
  jmess -c $input

	osascript -e 'tell application "Terminal" to close first window' & exit