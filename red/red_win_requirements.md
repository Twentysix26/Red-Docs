---
title: Windows requirements
sidebar: red_sidebar
permalink: /red_win_requirements/
last_updated: May 19, 2016
---
 
### Software
- [Install Python](https://www.python.org/downloads/). Red **needs** 3.5.0 or superior.  
{{site.data.alerts.important}}Remember to check "Add python to path"!{{site.data.alerts.end}}  
![](http://i.imgur.com/dfsaVLx.png)  

- [Install Git](https://git-scm.com/download/win)  
{{site.data.alerts.important}}Don't forget to check "Use Git from the Windows Command Prompt"{{site.data.alerts.end}}  
![](http://i.imgur.com/guis7EE.png)  

### Python libraries

**Windows:** open the start menu, type cmd, right click and open the command prompt as admin.  
**Linux:** open the console (Ctrl + Alt + T on Ubuntu)

With Red being modular, there's only one requirement that's necessary to run her. Any other requirement is dependent on the modules (cogs) you want to load. This is the full list, if you're not interested in certain modules feel free to ignore their requirements too.

**Red's requirement (_must_ install this):**

```
pip3 install git+https://github.com/Rapptz/discord.py@async
```

**cogs.audio requirement:**

```
pip3 install youtube_dl
```

[ffmpeg](https://www.ffmpeg.org/download.html) ([ffmpeg.exe](https://github.com/Twentysix26/Red-DiscordBot/raw/master/ffmpeg.exe), [ffplay.exe](https://github.com/Twentysix26/Red-DiscordBot/raw/master/ffplay.exe), [ffprobe.exe](https://github.com/Twentysix26/Red-DiscordBot/raw/master/ffprobe.exe)) must be installed too. Either install them from their original source or download the linked files and put them inside the folder Red-DiscordBot (when you'll install it, as explained in [the next guide](/Red-Docs/red_install_win)).  
Of course .exe and .dll are only for Windows. [Linux users may refer to this](/Red-Docs/red_install_linux).  
Once finished, your folder will look like this:  

![](http://i.imgur.com/OlELPTk.png)

**cogs.image requirements:**

```
pip3 install imgurpython
```

Hopefully things went smoothly.  

If you're on Windows, it's time to install Red herself.
[Proceed here](/Red-Docs/red_install_win).  

On Linux, your requirements are not yet fully installed. Proceed with [this guide](/Red-Docs/red_install_linux).

