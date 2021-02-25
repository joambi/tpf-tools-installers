# tpf-tools-installers
The TPF-Tools consist of a modular bundle of utilities which allow the bidirectional, low-latency and high-quality streaming of audio and video. It therefore allows to play music or other performative formats together remotely over the internet.  
The "tpf-tools-Installers" have been developed to simplify the installation of all necessary components for the TPF-TOOLS application. Furthermore, the update and version control are managed. 

# The philosophy behind the TPF-Tools
Although this architecture might be more demanding than using a plug-and-play device, there are some considerable advantages, on the audio side:
- The DAW allows you to have control on all parameters of the outgoing and incoming audio signals between the different locations.
- Everything can be controlled from your computer, no additional devices like mixing consoles are needed (although you can of course include them if you wish).
- Audio signals can be treated independently at each location, this allows you to make an individual local mix at each location without influencing the mix(es) at the other location(s).
- You can benefit from all functionalities of a DAW, e.g. recording your session, adding reverberation or other  plugins which extend your possibilities on sound-processing.
- Although the following introduction starts with a setup with two mono channels that are sent bidirectionally between two locations, the tool can flexibly be extended to more channels or more locations, also allowing very complex setups, up to 8 locations with 8 channels each.

All involved utilities are open source or open source based and (more or less) free of use. An additional advantage is that Ardour as well as the TPF-Client both use Jack, which facilitates handling and optimizes latency.

# Authors
Roman Haefeli roman.haefeli@zhdk.ch / Johannes Schütt johannes.schuett@zhdk.ch and the TPF-Team.

# License
GPL 3.0 (see LICENSE.txt)
