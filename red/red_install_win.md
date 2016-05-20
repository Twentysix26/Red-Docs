---
title: Installing on Windows
sidebar: red_sidebar
permalink: /red_install_win/
last_updated: May 19, 2016
---

> Disclaimer: if you modify tracked files (like .py) and then update with git, it might cause a conflict. I won't explain what to do in that case as this guide is mostly for normal users, but there are plenty of good git guides out there

**This miniguide is _Windows oriented_ but you can do the same on Linux, through the console.**

## Install using git

Assuming you have already installed the [requirements](/Red-Docs/red_win_requirements), it's now time to install Red.

* Go to the folder you want to install Red in. Right click. This is what you should see.  
![Git bash](http://i.imgur.com/32M4VPo.png)

* Open git bash and you should see a console similar to Windows' command prompt.  

![Git bash](http://i.imgur.com/IUz179P.png)

* Type (well, copy/paste):
```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
```

Git should now start downloading the files and put everything into a folder called "Red-DiscordBot". If everything works correctly, your folder should look like this:  
![mainfolderwin](http://i.imgur.com/OlELPTk.png)  

This is pretty much it. Now, make a new account for the bot by following the ["Creating a new bot account"](/Red-Docs/red_guide_bot_accounts/#creating-a-new-bot-account) section.  

Enter the folder, run startRed.bat *(or startRedLoop.bat for auto restart in case of error)* and follow the instructions for setup.

And we're done. 

## Updates

Now, everytime you want to update Red and there's a new version available, all you have to do is go into the folder "Red-DiscordBot", open git bash and type

`git pull`

Any new/modified file will be downloaded. Of course do this only when Red is not running.
