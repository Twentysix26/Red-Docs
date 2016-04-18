---
title: Subcommands
sidebar: red_sidebar
permalink: /red_guide_subcommands/
---

## What are subcommands?

Subcommands are a useful way to avoid having long-winded commands to do a particular function inside a cog. For this guide, we will be using the alias cog as an example.

In the alias cog, you can do `!alias` and it will show a help menu, which is great.  

![alias sub coms](https://i.imgur.com/dNQF20o.png)  

Notice all the options that come after? These are subcommands. They are really useful things, and this guide will show you how to use them.

## How to use a subcommand

Pretty simple really. Just do `!<maincommand> <subcommand> <arguments>`. For example `!alias show <arguments>` will show what the alias does.

## How to add a subcommand to a cog

All you cog creators have probably seen this line of code before, right?

```
@commands.command()
async def mycommand()
```

Well, with subcommands, you change it to this:

```
@commands.group()
async def mycommand()
```

This tells Red that whenever `!mycommand` is triggered, it should look out for a subcommand.

To add a subcommand, you would type:

```
@mycommand.command
async def subcommand()
```

So when you type `!mycommand subcommand`, it will execute the code under the subcommand. You can have as many subcommands as you need.