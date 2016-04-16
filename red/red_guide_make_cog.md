---
title: Make your own cog
sidebar: red_sidebar
permalink: /red_guide_make_cog/
---

The purpose of this tutorial is to help you create your first custom cog for Red Discord bot.  
It assumes that you have some basic programming skills and have touched python before. But don't be afraid, I will provide all the needed code for some copy-paste action.


## Boilerplate
First of all you need a nice and clean boilerplate to work with.
P.S. `[p]` is your prefix for the bot.

 1. Create a file `mycog.py` and open it with any text editor, we can recommend [Sublime Text 3](https://www.sublimetext.com/)
 2. Copy and paste the following code

```python
import discord
from discord.ext import commands

class Mycog:
    """My custom cog that does stuff!"""

    def __init__(self, bot):
        self.bot = bot

    @commands.command()
    async def mycom(self):
        """This does stuff!"""

        #Your code will go here
        await self.bot.say("I can do stuff!")

def setup(bot):
    bot.add_cog(Mycog(bot))

```

 3. Now you'll have a basic module that replies "I can do stuff" when you call `[p]mycom`
 4. Load your new module with `[p]load mycog`
 5. Test your command with `[p]mycom`
 6. Bot should respond with `I can do stuff!`

Now you have a basic command interface! Let's make it more interesting, shall we?

## Mentioning users
Sometimes I want to punch something, or someone, but I'm weak, and I need some help. That's why we'll make a bot puch someone, instead of ourselves.

In your code, change `async def mycom(self):` to `async def punch(self, user : discord.Member):` so now it will react to `[p]punch` and accept a user mention as an argument
 
The command's code should now look something like this

```python
...

@commands.command()
async def punch(self, user : discord.Member):
    """I will puch anyone! >.<"""

    #Your code will go here
    await self.bot.say("I can do stuff!")

...
```

But if you reload the cog with `[p]reload mycog` it will still say `I can do stuff` which is not what we want

Change your response to :
```python
await self.bot.say("ONE PUNCH! And " + user.mention + " is out! ლ(ಠ益ಠლ)")
```

*You can use any message, just remember to `+ user.mention` somewhere in there, for cog to target your prey!*

Reload the cog with `[p]reload mycog`

Now you can punch other people without getting your hands dirty, awesome! You can try to play around with it as you like!

## Getting info from webpages
Now, something a bit more usefull, although, not as fun. One of the most popular reasons you might want to create a custom cog - is to get info from some webpage. We can totally do that, so let's dive into it!

We need [BeautifulSoup4](http://www.crummy.com/software/BeautifulSoup/bs4/doc/), Red requires you to install one, so it should be in your system already, but if it is not, run `pip3 install beautifulsoup4` and you should be good to go

Now, add the following code after all of your import statements

```python
...

try: # check if BeautifulSoup4 is installed
	from bs4 import BeautifulSoup
	soupAvailable = True
except:
	soupAvailable = False
	
...
```

It's pretty straightforward, you just try to import bs4 from the module, and if it fails - we save that into variable
  
But that's not enough, we need to tell user that something went wrong, so modify your cog's setup section like this

```python
...

def setup(bot):
	if soupAvailable:
		bot.add_cog(Mycog(bot))
	else:
		raise RuntimeError("You need to run `pip3 install beautifulsoup4`")
```

So now, if the user has no BS4 installed, it will throw an error

```
RuntimeError: You need to run pip3 install beautifulsoup4
```

That's just what we need!
Now, in order to perform requests, we need to add `aiohttp` to our import list, just add `import aiohttp` after the BS4 imports. Your imports section should look something like this

```python
import discord
from discord.ext import commands
try: # check if BeautifulSoup4 is installed
	from bs4 import BeautifulSoup
	soupAvailable = True
except:
	soupAvailable = False
import aiohttp

...
```

Perfect!
With all the modules in place, we can proceed to requests. First of all, we need to chose a page we will be testing. I'm a bit into DOTA2, so I will try to parse steamdb's dota page for that.
Remove your current `await self.bot.say()` code and add the following

```python
url = "https://steamdb.info/app/570/graphs/" #build the web adress
async with aiohttp.get(url) as response:
    soupObject = BeautifulSoup(await response.text(), "html.parser") 
try:
    online = soupObject.find(class_='home-stats').find('li').find('strong').get_text()
    await self.bot.say(online + ' players are playing this game at the moment')
except:
    await self.bot.say("Couldn't load amount of players. No one is playing this game anymore or there's an error.")
```

Woah, that's kinda a lot of code, isn't it. But it's pretty simple.
 - First of all, we form the url with `url = "https://steamdb.info/app/570/graphs/"`
 - Then we request this url and form a `soupObject` which contains our webpage in a parsed format
 - Then we're trying to get the required info from the page, in this case, I look for `.home-stats li strong` CSS selector. For more info on getting info from bs4 object - [read the docs](http://www.crummy.com/software/BeautifulSoup/bs4/doc/)
 - If something was wrong, we respond with a sad message

So, not that hard, right? BS4 allows you to get any info from the webpage, which you can use as you want, and send it back to your channel

 Now, we will change the command's name to something more appropriate, and remove the `user : discord.Member` argument, as we don't need it.
 Something like `async def dotanow(self):` should be fitting.
   
 Reload your cog with `[p]reload mycog` and type `[p]dotanow` in chat, the bot should respond with an amount of players online. Neat!

The finished command's code should look something like this

```python
...

@commands.command()
async def dotanow(self):
    """How many players are online atm?"""

    #Your code will go here
    url = "https://steamdb.info/app/570/graphs/" #build the web adress
    async with aiohttp.get(url) as response:
        soupObject = BeautifulSoup(await response.text(), "html.parser") 
    try:
        online = soupObject.find(class_='home-stats').find('li').find('strong').get_text()
        await self.bot.say(online + ' players are playing this game at the moment')
    except:
        await self.bot.say("Couldn't load amount of players. No one is playing this game anymore or there's an error.")

...
```