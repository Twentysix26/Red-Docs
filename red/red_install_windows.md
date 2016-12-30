---
title: Installing on Windows
sidebar: red_sidebar
permalink: /red_install_windows/
last_updated: Aug 18, 2016
description: A guide for installing Red on Windows
---

### Software

- [Install Python](https://www.python.org/downloads/). Red **needs 3.5**. **Avoid 3.6 for the time being as there are known installation issues with it**.  
![](http://i.imgur.com/dfsaVLx.png)<br/><br/>
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
![mainfolderwin](https://i.imgur.com/603QQYK.png)  

* If you're interested in audio features, double click **download_ffmpeg.bat**

* Right click **update.bat** and open it as admin. This will install the requirements and will also allow you to update Red and its requirements in the future.

{% include important.html content="<br/>Verify that **update.bat** goes through with no errors. If the error 'Unable to find vcvarsall.bat'
shows up it may be necessary to update pip by doing<br/>**`py -3 -m pip install --upgrade pip`**<br/> in a command prompt with admin privileges
and start **update.bat** again." type="info" %}

* To start Red, double click **startRed.bat**

You will be prompted for a token. Make a new bot user by following the ["Creating a new bot account"](/Red-Docs/red_guide_bot_accounts/#creating-a-new-bot-account) section.  

Complete the configuration process. You'll be able to invite your bot to your server by using the invite link that's provided at boot.

Consult the [Getting started](/Red-Docs/red_getting_started/) page for a practical guide on familiarizing yourself with Red.

{% include tip.html content="<br/>Starting Red with **startRedLoop.bat** will make it so it automatically restarts in case of critical errors, such as networking issues." type="info" %}

### Updates

To update Red, simply run as admin **update.bat**
