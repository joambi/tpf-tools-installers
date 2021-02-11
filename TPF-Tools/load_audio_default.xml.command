#!/usr/bin/env bash
cd /Applications/TPF-Tools/audio-connections
ls -1
echo "copy & paste the xml file that you like to choose!"
 read -p "Do you wish to open this connection file?      " input
 input="$input"
 echo "Load your connection xml-file:"
  echo "jmess -c $input"
  jmess -D
  jmess -c $input

exit 