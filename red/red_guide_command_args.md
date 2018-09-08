---
title: Custom commands arguments
sidebar: red_sidebar
permalink: /red_guide_command_args/
description: Information on custom command arguments.
---

## Custom commands arguments

You can make dynamic custom command by using some of the underlying library's objects as arguments.

There are 4 objects (and their attributes) supported for now:

[author](http://discordpy.readthedocs.io/en/latest/api.html#user)  

[server](http://discordpy.readthedocs.io/en/latest/api.html#server)  

[channel](http://discordpy.readthedocs.io/en/latest/api.html#channel)  

[message](http://discordpy.readthedocs.io/en/latest/api.html#message)  


`Author` represents the user who issued the command, `server` and `channel` the server and channel in which it was issued and `message` the message that... Contains the command that triggered the custom command.  

I swear it's simpler than it sounds.

As an example, let's see how to create a custom command that shows the user's ID.

    [p]cc add id Here's your id: {author.id}

This custom command uses the [user's attribute id](http://discordpy.readthedocs.io/en/latest/api.html#discord.User.id). In the discord.py's docs linked above you can see all the attributes of those objects. "Author" is a special case, you can find it in the docs as [Member](http://discordpy.readthedocs.io/en/latest/api.html#member) and [User](http://discordpy.readthedocs.io/en/latest/api.html#user).

**Some other examples:**

    [p]cc add kickme :boot: {author.name}
    [p]cc add greet Hi {author.mention}! Welcome to {server.name}!
    [p]cc add whereami? You're in channel {channel.name}!
    [p]cc add discordtime Current Discord time: {message.timestamp}

Invalid or forbidden arguments will be ignored.
