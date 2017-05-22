---
title: General problems
sidebar: red_sidebar
permalink: /red_guide_troubleshooting/
last_updated: May 19, 2016
description: Troubleshooting for Red.
---

Take a moment to read the error you're getting and see if the solution is already in this page.  I'm not reporting the full error here, only a line, so read carefully.

## Installation issues  

![](http://i.imgur.com/iyPCJs9.png)  
If you're on Windows, run `download_ffmpeg.bat`. Otherwise read again the ffmpeg installation part of the guide you followed for your OS.

***

`Red is working but there are 0 cogs loaded`

This mostly happens on Linux. Your current working directory must the bot's root folder (where red.py is). Run it from there. Don't run it from outside its own directory.

***

`ImportError: No module named 'discord'`

Your discord.py wasn't installed. Make sure you install with a command prompt and admin rights.

`pip3 install -U git+https://github.com/Rapptz/discord.py@master#egg=discord.py[voice]`

***

`SyntaxError: invalid syntax`

Your python is inferior to 3.5.0. Red needs at least 3.5.0 32bit to run. Install it.  
If you already did you might have two different versions of python and the older one is the default.

***

`filter:a`
Uninstall and Reinstall FFMPEG
For Linux users: `sudo apt-get purge ffmpeg && sudo apt-get install ffmpeg`

## Configuration issues

> Red is not responding to my commands

Red must be invited in your server with the OAuth link that shows up when you start it. If you already did, make sure that Red has  [permissions](https://support.discordapp.com/hc/en-us/articles/206029707?flash_digest=cdf88bf221fe52a4aa2425665c38563efd63723e) to actually read your messages

## Other issues

`BlockingIOError: [WinError10035] A non-blocking socket operation could not be completed immediately`

It's most likely the connection on your end. Get a stable connection (not wifi) and restart the bot. It fixes this problem 99% of the time.

> Why is Red spamming streamalerts?

It could be the streamer at fault or the Twitch API freaking out.

> How do I submit my own cog?

To submit your cogs you can follow [this guide](/Red-Docs/red_cog_how_to_publish/)

> Can I submit my own trivia list?

Of course! Feel free to send it to us or the Trivia "issue" on our github.

***

**If you reached the end of this list and your problem is not here, [head into #support](https://discord.gg/red) to get some help.**
