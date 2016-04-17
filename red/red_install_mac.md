---
title: Installing on Mac OS X
sidebar: red_sidebar
permalink: /red_install_mac/
---

A guide by orels1

*  Install brew  
  In Finder or Spotlight, search for and open terminal
  In the window opened - paste this:

	```
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```

   And press enter.

*  After the installation, install the required packages by pasting commands below and pressing enter, one-by-one:

	  `brew install python3`  
	  `brew install git`  
	  `brew install ffmpeg`  
	  `brew install opus`  
	  `pip3 install git+https://github.com/Rapptz/discord.py@async`  
	  `pip3 install youtube_dl`  
	  `pip3 install imgurpython`  
  
* Enter the folder you want to install Red in through the Terminal:
  use the command `cd` (change directory) and `ls` (list files/dirs) to navigate to the folder.
  For example, if you want Red to be installed in Applications inside a folder named Discord Stuff,
  you could type `cd "Applications/Discord Stuff"` (notice, if you have a space in a folder name, surround the path with quotes)
  or you could type `cd Applications` then `ls` to make sure you're in the right place, then `cd "Discord Stuff"`
  or you could type `cd` then drag the folder from finder into terminal before pressing enter
  
* Paste this command into terminal and press enter:

	```
	  git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
	```
	
  do not close the terminal afterwards

* While in Red's folder, download [this script](https://drive.google.com/uc?export=download&id=0B_mR_iWue1vSVXlNSktnZkJuTUk) and place the file inside your Red-DiscordBot folder, the same folder where red.py is.

* Run `export PATH=$PATH:/usr/local/Cellar/opus/1.1.2/lib/` in the terminal
  
* In Terminal, inside the Red-DiscordBot folder, paste this command and press enter:
  `sh macRedLoop.sh`
You may need to set it as executable first.

* Complete the initial setup as the bot requires (email, password, etc.), remember to sign into the bot's account once and join your main server. This is the only time you will need to sign into the bot's account.

* To verify that the bot works, do `[your_prefix_here]ping` on your server (in any chat Red can read and write messages). It should respond "pong".