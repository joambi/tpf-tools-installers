This is the advanced equipment of the TPF-TOOLS_v1.1b for macOS 10.14+
--
macOS "big sur" only Intel!


Important:
---
Make sure that you have installed JackOSX!
Take the  'TPF tool JackOSX Installer.command' to do this.
If not, go to download install_JackOSX

After the JackOSX installation, you have to restart your Macintosh. If everything went well, you should now create an aggregate. How to do this is described here:

https://support.apple.com/en-us/HT202000.


installer tpf-tool-advanced
----
The 'tpf-tool-advanced' corresponds to the previous basic idea of TPF tools for eLearning the 'tpf-tool-basic' and 'tpf-tools-intermediate'.
advanced stands for modularly structured application possibilities for eLearning and Performances (simple to quite complex settings).
The most important addition is the possibility to create a 3D audio mix for headphones (binaural) as well as for speakers (ambisonics).
Audio and video are independent of each other. Ultragrid can but does not have to be used.

Download:
---
tpf-tools-advanced go to GitHub: 
https://github.com/joambi/

---

Install the tpf-tools-advanced:
---
1.download the DMG

2.open the DMG

3.open the folder ' installer-tpf-tools-advanced'

4.right-click the 'install-tpf-tools-advanced.command'

5.enter your admin-PW

6.follow the installer instructions.


The Installer installs the following components:
---

Applications:
---
- tpf-party.app   (v1.1-beta4)	
- tpf-client.app  (v1.1-beta5)
- Ardour6.6.app	
- uv-qt.app (Ultragrid 1.6+)

Scripts:
---
- tpf-runner.command
- tpf-save-audio.command
- tpf-load-audio.command	

Folders:
---
- tpf-settings 
- tpf-basic.txt
- tpf-audio-connections 
- tpf-basic.xml
- ardour-templates
- tpf-basic.ardour

tpf-video-scripts:
---
	- video-runner-camera01.command 
	- video-runner-camera02.command
	- video-selftest-camera01.command
	- video-selftest-camera02.command	

tpf-uninstallers:
---
	- uninstaller-JackOSX.command
	- uninstaller-tpf-tool.command
    
Ambisonics & Binaural  Audio-Plug-Ins (free) installed in:    --> /Library/

Audio/Plug-Ins:
---
	- ICST Ambisonics Plugins   --> ambisonics
	- dearVR_AMBI_MICRO(free)  --> binaural
	- IEMPluginSuite_v1.11.1 --> reverb
  

Sources:
---

- JackOSX.0.92_b3  to /Applications/Jack  --> https://ccrma.stanford.edu/software/jacktrip/osx/JackOSX.0.92_b3.pkg

- JMess to /usr/local/bin --> https://github.com/jacktrip/jmess-jack

- Ardour.app --> https://ardour.org

- Ultragrid --> http://www.ultragrid.cz

- TPF-TOOLS --> https://gitlab.zhdk.ch/TPF

- EMPluginSuite_v1.11.1 --> https://plugins.iem.at/

- dearVR_AMBI_MICRO.pkg --> https://www.dearvr.com/products/ambi-micro

- Install Sennheiser AMBEO VR Mic A-B Converter 1.2.3.pkg --> https://de-ch.sennheiser.com/ambeo-abconverter

- ICST_AmbiPlugins_2.1.0_osx.pkg --> https://bitbucket.org/christian_schweizer/icst-ambisonics-plugins/downloads/

More Info:
---

https:/tpf-tools.postach.io/

---
License: GPL 3.0
2021@tpf-team