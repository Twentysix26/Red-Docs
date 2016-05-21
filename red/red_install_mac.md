---
title: Installing on Mac OS X
sidebar: red_sidebar
permalink: /red_install_mac/
last_updated: May 19, 2016
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


  Do not close the terminal afterwards. If this works, your main folder should look like this:  
  ![mainfolderosx](https://i.imgur.com/M2qXWG3.png)

* Run `export PATH=$PATH:/usr/local/Cellar/opus/1.1.2/lib/` in the terminal 

* While in Red's folder, download [this script](https://cdn.discordapp.com/attachments/160386989819035648/174137122465251330/macRedLoop.command) and place the file inside your Red-DiscordBot folder, the same folder where red.py is.
  
* Double-click the `macRedLoop.command` file you place into the Red-DiscordBot folder.  
You may need to set it as executable first: `chmod u+x macRedLoop.command` in Terminal, inside the Red-DiscordBot folder.

* Complete the initial setup. On the setup, you will be required to enter a token. Get one [here](https://discordapp.com/developers/applications/me). If you get stuck, follow the [bot accounts](/Red-Docs/red_guide_bot_accounts) guide.

* To invite your bot, use the link given to you in Terminal when booting the bot up.

* To verify that the bot works, do `[your_prefix_here]ping` on your server (in any chat Red can read and write messages). It should respond "pong".
