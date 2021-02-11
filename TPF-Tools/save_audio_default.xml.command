#!/usr/bin/env bash
# "save the audio connections between tpf-client and Ardour6.app"
echo -e "\033[1;31m Save the audio connections between the tpf-client and the Ardour6.app! \033[0m"
cd /Applications/TPF-Tools/audio-connections
sleep 2
echo -e "\031[1;31m These configuration xml files already exist. \031[0m"
sleep 2
ls -1
echo "Define a name for your audio configuration and save this xml file!"
sleep 2
echo -e "\033[1;31m Tip: Choose the same name as your Ardour6 Session.! \033[0m"
 read -p "Now write the name and save it with Enter!      " input
 input="$input"
 echo "Saved it to: /Applications/TPF-Tools/audio-connections!:"
  echo "jmess -s $input"
  jmess -s $input
echo "You can load this configuration file at any time with the 'load_audio_default.xml' command."
sleep 2
exit 0