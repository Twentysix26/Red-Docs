---
title: Twitch ClientID
sidebar: red_sidebar
permalink: /red_guide_twitch_clientid/
last_updated: November 9, 2016
toc: false
description: A guide for adding a Twitch ClientID to Red.
---

This guide will show you on how to make your own Twitch ClientID within 5 min or less.

## Making the application
1. Go to the [following page](https://www.twitch.tv/settings/connections) (Make sure you're logged in). On the bottom of the page you'll see ``Developer applications``  
2. Click ``Register your application``.  
3. Put in the required information. Set a name, for the redirect URL use ``http://localhost`` and select as category ``Chat Bot`` (For more information see the screenshot below)
4. Now copy the ClientID and run the following command in your discord chat ``streamset twitchtoken <clientID>``
5. Add your stream alerts with ``streamalert twitch <channelname>``

- - -

![]({{ site.url }}Red-Docs/images/red_guide_twitch_clientid_img1.png)
