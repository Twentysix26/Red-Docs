---
title: Twitch ClientID
sidebar: red_sidebar
permalink: /red_guide_twitch_clientid/
last_updated: September 26, 2016
toc: false
---

This guide will show you on how to make your own Twitch ClientID within 5 min or less.

## Making the application
1. Go to the [following page](https://www.twitch.tv/settings/connections) (Make sure you're logged in). On the bottom of the page you'll see ``Developer applications``  
2. Click ``Register your application``.  
3. Enter a name, use ``http://localhost`` for the Redirect URL and select ``Chat Bot`` as the application category. And finish by clicking ``Register``  
4. Now copy the ClientID and run the following command in your discord chat ``streamset twitchtoken <clientID>``
5. Add your stream alerts with ``streamalert twitch <channelname>``
