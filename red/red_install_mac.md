---
title: Installing on Mac OS X
sidebar: red_sidebar
permalink: /red_install_mac/
last_updated: May 19, 2016
description: A guide for installing Red on Mac.
---

Guide originally made by orels1

#### Installation

*  **Install brew**  
  In Finder or Spotlight, search for and open terminal.
  In the terminal that will open, paste this:

	```
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```

   And press enter.

*  After the installation, install the required packages by pasting the commands and pressing enter, one-by-one:

	  `brew install python3 --with-brewed-openssl`  
	  `brew install git`  
	  `brew install ffmpeg --with-ffplay`  
	  `brew install opus`  

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

  Do not close the terminal afterwards. If this works, the content of the folder should be this:  
  ![mainfolderosx](https://i.imgur.com/1EIjOQj.png)

* Run `export PATH=$PATH:/usr/local/Cellar/opus/1.1.2/lib/` in the terminal

* Run `cd Red-DiscordBot` in the terminal

* Then `python3 launcher.py`

* This will open **Red's launcher**. The launcher is an applications made to facilitate many common operations. Navigating the menus is simple: pick a number and press enter.

* Install the requirements by reaching the correct submenu

![updatescreen](https://i.imgur.com/pdCB1xh.png)

* You can now run Red from the launcher's main menu

* Complete the initial setup. During the setup, you will be asked to enter a token. Get one [here](https://discordapp.com/developers/applications/me). If you get stuck, follow the [bot accounts](/Red-Docs/red_guide_bot_accounts) guide.

* To invite your bot, use the link given to you in the Terminal when Red has been started.

* Consider consulting the [Getting started](/Red-Docs/red_getting_started/) page for a practical guide on familiarizing yourself with Red.

{% include tip.html content="<br/>The launcher will create 2 scripts: **start_red.command** and **start_red_autostart.command**. You can use those to start
Red directly without passing through the launcher." type="info" %}

{% include important.html content="<br/>If the login fails with **'SSLError'** it may be necessary to run this command first:
<br/>
`python3 -m pip install certifi`
<br/>
[You can find more informations about this issue here](https://github.com/Rapptz/discord.py/issues/423#issuecomment-272093801)" type="info" %}

#### Updating Red
Pick the update option from the launcher or do
```
python3 -m pip install --upgrade -r requirements.txt
```
```
git pull
```
in Red's main folder.
