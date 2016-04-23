---
title: Aliases
sidebar: red_sidebar
permalink: /red_guide_aliases/
---

## What are aliases?

Being able to add aliases is a useful function of the bot that is often overlooked.  

If used right, aliases can add a lot to the bot and to your community with little to no "coding".  
With a little creative thinking and maybe some coding here and there, aliases can add a lot of functionality that isn't inherent in the bot.


This page will assume you have `!` as your prefix. If you have a different prefix, simply substitute `!` with yours.

First comes first. Do `!help Alias` and look through the commands a bit. Try making some of your own aliases.

The purpose of aliases is to let you call a command using a different name. Here are a few examples that demonstrate that.

Aliases are case-sensitive

`!alias add NO flip`  
`!NO`  
_flips a coin and... HEADS!_

You can use the command inputs like normal  
`!NO Kowlin`  
(╯°□°）╯︵ uᴉlʍoʞ  

## Some useful aliases

### For the average user

* `!alias add q queue` - Now just use `!q url` to queue a song or `!q` to list them!
* `!alias add wiki wikipedia` - For the lazy
* `!alias add g google` - Nobody's got time to write out google!
* `!alias add volume audioset volume` - Now you only need to type `!volume` to set the volume.
* `!alias add will 8` - Ask the 8 ball just by asking the question.
* `!alias add nudes gifr penguins` - ( ͡° ͜ʖ ͡°)
* `!alias add "🔪🖐" "" "" "" "" "" "" "‼😵🔴"` - Knife game.
    * Chooses a random response (most of which are empty)
    * Notice, the emotes have no space. Alias names must be single words: `!alias add ":knife::hand_splayed:" choose "" "" "" "" "" "" ":bangbang::dizzy_face::red_circle:"`
* `!alias add 😬🔫 choose 😅🎈🔫  😅🔅🔫 😅🎊🔫 😅🎉🔫 😅❣🔫 ❗💥☠🔫` - Russian Roulette. Same as the Knife game.

### Tools for making *advanced* aliases
<sub>adding examples for each later<sub>

* **debug** - aliasing the debug command allows you to evaluate arbitrary python code
    - only the bot owner can use aliases with this 
* **List Comprehensions**
    - looping
    - assignment within an expression - `[None for my_var in ["value to put in my_var"]]``
    - filtering with if
* **Conditional Expressions** (Ternery Operators) - if/else within expressions
* **lambdas** 
    - altering scopes
    - awaiting function calls
    - user input - `!alias add cmd debug (lambda input: #code)` user does `!cmd (input)`
    - default arguments - `(lambda search, page=0, url='www.github.com')` users can specifiy different values if they would like
* **open** - open files to read/write from/to
* **subprocess** - running anything you would in cmd/terminal! (more difficult to use on windows)
    - can even get terminal output by writing stdout to a file then reading in the same expression
* **create_task** - running multiple awaited function calls in one expression

### For people who somewhat know what they are doing

* `!alias add coglist debug sorted(bot.cogs.keys())` - Displays all of your cogs
* `!alias add postcog debug (lambda fname, ctx=ctx: bot.send_file(ctx.message.channel,"cogs/"+fname+".py"))` - Posts a cog to chat. Format: `!postcog ('<cogname>')` **Use for debugging only.**

### This will seriously break stuff

***Only proceed if you know what you are doing, and how to undo things. This will void your support warranty.***  
**This will probably also make it more difficult to update your bot**

What this alias will do is allow you to install cogs from github links or discord attachments, but it requires some editing. **You _shouldn't really_ do this, but if you do, and it breaks, it isn't our fault. You read this disclaimer. Period.**  

Here we will edit `red.py`. So y'know, dangerous and all.

You can edit `red.py` two ways:  
  1. open `red.py` and place `import subprocess` in with the other imports  
  2. for the lazy:  
    1. add the import to `red2.py`: **`!debug (lambda: open("red2.py", 'w'))().write("import subprocess\n"+"".join(list(open('red.py'))))`**  
    2. overwrite `red.py` with `red2.py`: **`!debug (lambda: open("red.py", 'w'))().write("".join(list(open('red2.py'))))`**  
    3. double check `import subprocess` is in `red.py`: **`!debug "".join(list(open('red.py')))[:500]`**  

You may need to repeat this process when you update your bot, depending on how you update.

Next, type 

```
!alias add install debug (lambda fn_or_url, core_cog=0: 'Installed. Make sure to (re)load the cog.'*int(0==(lambda url: subprocess.call(['wget', '-P', 'cogs', '-N', url]))((lambda c=fn_or_url, co=core_cog: (c.replace('https://github.com/','https://raw.githubusercontent.com/')).replace('/blob','') if '.' in c or '/' in c else 'https://raw.githubusercontent.com/Twentysix26/Red-DiscordBot/develop/cogs/' +c+'.py' if bool(co) else 'https://raw.githubusercontent.com/Twentysix26/Red-Cogs/master/cogs'+('/'+c)*2+'.py')())))
```

To use this command, it's almost identical to `!postcog`. Type `!install ('<link>')`, and load the cog once done.
