---
title: Installing on Windows
sidebar: red_sidebar
permalink: /red_install_windows/
last_updated: Aug 18, 2016
description: A guide for installing Red on Windows
---

### Software

- Install Python 3.5.4. Direct links: [64bit](https://www.python.org/ftp/python/3.5.4/python-3.5.4-amd64.exe) / [32bit](https://www.python.org/ftp/python/3.5.4/python-3.5.4.exe).  
Red **needs 3.5.x**. **Do not install Python 3.6.x or superior, they will NOT work.**  
![](http://i.imgur.com/tTeIWaW.png)<br/><br/>
- [Install Git](https://git-scm.com/download/win)  
![](http://i.imgur.com/guis7EE.png)  

{% include important.html content="<br/>Failure to add the above software to PATH like shown will result in failure of the following steps." type="info" %}

### Installation

* Go to the folder you want to install Red in. Don't create a separate folder for it, the installer will do it by itself.  
Right click. This is what you should see.  
![Git bash](http://i.imgur.com/32M4VPo.png)

* Open git bash and you should see a console similar to Windows' command prompt.  

![Git bash](http://i.imgur.com/IUz179P.png)

* Copy/paste this:
```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
```

Git should now start downloading the files and put everything into a folder called "Red-DiscordBot". This will be the content of the folder:  
![mainfolderwin](https://i.imgur.com/1EIjOQj.png)  

* Click on **start_launcher.bat**. Red's launcher will open up: it's an applications made to facilitate many common operations.
Navigating the menus is simple: pick a number and press enter.

* First things first: **let's install Red's requirements**. Pick the appropriate option from the main menu (1 or 2).  
Then, if you’re interested in audio, you’ll need to pick **ffmpeg** as well: make sure to install the 64 bit version (assuming you’re on a 64bit system), as the installation is entirely automated.

![updatescreen](https://i.imgur.com/pdCB1xh.png)

{% include important.html content="<br/>If the requirements installation fails with the error **'Unable to find vcvarsall.bat'** it may be necessary to update pip first.  
This might require admin privileges, in that case you'll have to close the launcher and reopen it as admin (right click -> open as admin).
You'll find the option 'Update pip' in the 'Update' submenu" type="info" %}

### Running Red

Having completed the previous steps, Red should be good to go. Go back to the main menu and pick the **Run Red** option.

You will be prompted for a token. Make a new bot user by following the ["Creating a new bot account"](/Red-Docs/red_guide_bot_accounts/#creating-a-new-bot-account) section.  

Complete the configuration process. You'll be able to invite your bot to your server by using the invite link that's provided at boot.

Consult the [Getting started](/Red-Docs/red_getting_started/) page for a practical guide on familiarizing yourself with Red.

{% include tip.html content="<br/>The launcher will create 2 batch files: **start_red.bat** and **start_red_autostart.bat**. You can use those to start
Red directly without passing through the launcher." type="info" %}

### Updates

Keep Red and its requirements up to date by occasionally running the update option from the launcher.
