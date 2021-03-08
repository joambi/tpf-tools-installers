tpf-tool-intermediate
---

This is the intermediate equipment of the TPF-TOOLS  v.1.1b  is compatible with 10.14+  
macOS "big sur" only Intel!

Important:
-------------
Make sure that you have installed JackOSX! Take the  'TPF tool JackOSX Installer.command' to do this.
After the JackOSX installation, you have to restart your Macintosh. If everything went well, you should now create an aggregate. 

How to do this is described here: https://support.apple.com/en-us/HT202000.

---
installer tpf-tool-intermediate 
The 'tpf-tool-intermediate' corresponds to the previous basic idea of tpf-tools for eLearning the 'tpf-tool-basic'. 
Intermediate stands for modularly structured application possibilities for Distant Teaching and Learning and Performances (simple to quite complex settings). 
Audio and video are independent of each other. Ultragrid can but does not have to be used.

Content tpf-tool-intermediate :
----------
- tpf-party.app   (v1.1-beta4)
- tpf-client.app  (v1.1-beta5)
- Ardour6.6.app
- uv-qt.app (Ultragrid 1.6+)
- tpf-runner.command
- tpf-save-audio.command
- tpf-load-audio.command

Folders:
---

tpf-settings:
  

- tpf-basic.txt
- tpf-default.txt
- tpf-intermediate.txt

tpf-audio-connections:
- audio-basic.xml 
- audio-default.xml
- audio-intermediate.xml

ardour-templates:
- tpf-intermediate-basic.ardour 
- tpf-intermediate-default.ardour
- tpf-intermediate-intermediate.ardour

tpf-video: 
- video-runner-camera01.command
- video-runner-camera02.command
- video-selftest-camera01.command
- video-selftest-camera02.command

tpf-uninstallers:

- uninstaller-JackOSX.command
- uninstaller-tpf-tool-intermediate.command



Start the tpf-tools-intermediate:
----

After the installation process, you can start the tpf-tools-intermediate basic session.

1. double click on the file "04_tpf-tool_runner.command".
2. follow the instructions of the tpf-runner.


About Ardour 6.6.app
---------------------------
please go to the Ardour website: 
https://ardour.org/


About uv-at.app
---------------------
please go to the Ultragrid website: 
http://www.ultragrid.cz/



About TPF-Client
-----------------------

tpf-client is a low-latency audio transmission software-based
on the jacktrip protocol and built-in Pure Data.

It tries to overcome some limitations that are often encountered
when using the traditional jacktrip commandline utility:

 * None of the endpoints are required to have a public IP address.
   All clients can be behind a firewall.
 * The tpf-client reduces complexity when configuring a session
   with many endpoints.

The client registers itself to a tpf-server which keeps track
of the connected clients. Thus the clients learn about the other
clients and establish a jacktrip audio connection to their
peers either by routing the packets through the tpf-server or
directly to the peer by employing a technique called UDP hole
punching (https://en.wikipedia.org/wiki/UDP_hole_punching).

You can download the client from:

  https://gitlab.zhdk.ch/TPF/tpf-client

The client is pre-configured to connect to a tpf-server
running on telematic.zhdk.ch (TCP-Port 3025) which is supposed
to be running anytime in the area of Zurich, Switzerland. The
tpf-server software can be found here:

  https://gitlab.zhdk.ch/TPF/tpf-server

Depending on the locations of the endpoints it is advised to
run a server closer to one of the endpoints in order to
keep transmission latency low.


Prerequisites
-------------

Make sure to get the latest Pure Data from:

  https://puredata.info/downloads/

You need the following externals to run tpf-client
  * iemnet
  * osc
  * slip

You can install externals through the Pd menu:
'Help' -> 'Find Externals'


Running the client
------------------

To run the client, open the patch tpf-client in Pure Data. Typically,
you run Pd with jack as audio backend, so that you can send audio from
and to the tpf-client to other software. When running from the command-
line, the recommended parameters are:

  pd -rt -jack -in channels 8 -out channels 65 -nojackconnect \
     -jackname tpf-client -open tpf-client/tpf-client.pd

Before connecting to the server, make sure to set a name in <Location>
and all parameters. The parameters sr (sample rate) and bs (block size)
must be the same for all clients. The first connecting client defines
the values of those parameters for the session. After configuring those
parameters the client can connect to the server by clicking the top
left button. Blue indicates the connection is established. Red indicates that
some errors occurred. Check the message for the reason. Reasons for connection
failure include sample rate or name conflict (the configured name is already in
use by someone else).

Once connected, other endpoints appear in one of the 8 rows. In order to
establish audio transmission, either one side needs to initiate the
connection by clicking the black square on the left and the other side
has to confirm. A flashing button indicates the other side is waiting
for confirmation. Once the audio connection is established, the
corresponding button turns blue and the numbered squares indicate the
number of received channels and the level of each. The numbers on the
channel indicators correspond with the numbers in the qjackctl connection
dialog.

By double-clicking the left square, a request for a connection using
UDP hole punching is sent. When confirmed, a direct transmission between
endpoints without using the server as UDP proxy is established. However,
this feature is considered experimental and can't be used in certain
network environments.


Ready-to-use macOS app
----------------------

If your computer runs macOS, you may download a self-contained
application bundle from:

  https://gitlab.zhdk.ch/TPF/tpf-client/-/releases/


Bugs
----

  * tpf-client crashes Pd when receiving a stream with 3 channels

For any bug, issue, or suggestion, please open an issue [here](https://github.com/reduzent/tpf-client/issues).


Authors
-------

  * Roman Haefeli <roman.haefeli@zhdk.ch>
  * Johannes Schütt <johannes.schuett@zhdk.ch>
  * TPF-Team @ZHdK

License
----

  GPL 3.0 (see LICENSE.txt)