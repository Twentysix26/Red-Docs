---
title: FAQ
sidebar: red_sidebar
permalink: /red_faq/
description: Frequently asked questions
---

### How do I make it join my server?

[See the getting started guide.](/Red-Docs/red_getting_started/)

### I can't seem to input the commands in the console. Is this the correct way?

[No, it is not. Red is a chatbot, commands go in the chat.](/Red-Docs/red_getting_started)

### Red doesn't respond to my commands

- Make sure Red is active. Check that the console is open. Like any other software it won't work if it's not open.
- Make sure that you're using the correct prefix. This is the prefix you set during the initial configuration and it's displayed on the console.
- Make sure that Red has `read messages` AND `send messages` [permissions](https://support.discordapp.com/hc/en-us/articles/206029707) in the channel you're trying to issue commands in

### Red doesn't respond to some commands. They seem to be mod / admin ones.

Make sure that you're the owner by checking in the console. The owner is automatically set to who owns the application. If you created the bot user with another account by mistake you can use `[p]set owner` to set yourself as owner.

### How do I make it join a channel? / I installed and it won't join a voice channel

Red *has no need* to get into a voice channel as soon as it gets installed nor *you need* to make her join manually.  
What you're actually asking is: **how do I use the music part of this bot?**  
The answer is: use *any* audio command that makes it play audio. [Read more about how to see the commands here](https://twentysix26.github.io/Red-Docs/red_getting_started/#the-commands). If for some reason the commands are not present, try loading the audio cog. [As explained here](https://twentysix26.github.io/Red-Docs/red_getting_started/#cogs), this is done by issuing `[p]load audio`. Assuming you properly followed the installation guide and installed the requirements, it will get loaded.  
A good way to test is `[p]play` with a random YouTube URL.

### How do I go back to the initial configuration? I want to check some settings

You don't, use `[p]set` instead.

### How do I change the avatar?

See `[p]set`.

### How do I change the prefix?

See `[p]set`.

### How do I restrict Red to one channel / some channels?

Two ways:
- Set the [proper permissions](https://support.discordapp.com/hc/en-us/articles/206029707). Disallow `read messages`: if Red cannot read the messages it also cannot respond to them.

- Use the `[p]ignore` command
