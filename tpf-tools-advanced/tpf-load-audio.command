#!/usr/bin/env bash
cd /Applications/tpf-tools-advanced/tpf-audio-connections
ls -1
echo -e "\033[1;32m copy & paste the xml file that you like to choose!\033[0m"
read -p "Do you wish to open this connection file?      " input
 input="$input"
echo -e "\033[1;32m Load your connection xml-file:  \033[0m"
  echo "jmess -c $input"

  jmess -D
  jmess -c $input

	osascript -e 'tell application "Terminal" to close first window' & exit#!/bin/bash
