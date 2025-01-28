@echo off
::///////////////////////////////////////////////////////////////////////
::///  	      T7x Dedicated Server Configuration start-up file        ///
::///////////////////////////////////////////////////////////////////////
:://                                                                   //
:://                    Your Game Server Port.	       	       	       //
:://            Make sure you Port Forward both UDP & TCP              //
::///////////////////////////////////////////////////////////////////////

set GamePort=27017

::///////////////////////////////////////////////////////////////////////
::// Below edits are optional unless you run multiable servers or mods.//
::///////////////////////////////////////////////////////////////////////
:://       Load a mod on your server using the Steam Workshop ID       //
:://           of the Mod. Example: ModfolderName=2833912385           //
:://                                                                   //
:://       Unload a mod on your server by removing the Steam           //
:://             Workshop ID. Example: ModfolderName=                  //
::///////////////////////////////////////////////////////////////////////

set ModFolderName=

::///////////////////////////////////////////////////////////////////////
::// 	Your edited server.cfg in the "zone" folder goes here...       //
:://	This is were you edit your hostname, rcon, inactivity, etc     //
:://                          (Optional)                               //
::///////////////////////////////////////////////////////////////////////

set ServerFilename=server_cp.cfg

::///////////////////////////////////////////////////////////////////////
:://DONE!! WARNING! Don't mess with anything below this line. SEROUSLY!//
::///////////////////////////////////////////////////////////////////////

start boiii.exe -dedicated +set fs_game "%ModFolderName%" +set net_port "%GamePort%" +set logfile 2 +exec %ServerFilename%