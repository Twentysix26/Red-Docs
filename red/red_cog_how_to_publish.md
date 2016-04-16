---
title: Publish your cog
sidebar: red_sidebar
permalink: /red_cog_how_to_publish/
---

In order to be published, your cog must:  

 *  Not conflict with any of the standard modules  

 *  Not be too heavy

 *  Have clear instructions / list of commands (or at least a `see !help Category`)

 *  Not generate/tamper with any data outside its own subfolder in data

 *  Not be malicious

Once you're sure that your cog meets the requirements, this is how you proceed:  

 * Make a folder with the same name as the cog. (example.py -> example)

 * Put your cog (py file) inside it.

 * Any data that your cog needs must be in a folder called "data" inside that folder

 * If your cog doesn't need additional files in order to work, don't make a data subfolder

 * No multiple *.py files in the root folder 

Example:  
yourcog/testcog.py  
yourcog/data/text.json  
yourcog/data/text2.json  
yourcog/data/moredata/text.json

When the user installs your cog, the installer will take care of taking your data files and put them in /data/yourcog/, so you can expect them to be there once your cog gets installed.  

Now it's time to make the info.json. This is what the installer uses to get informations about the cog and display them to the user when requested (name, author, description...).  

[Download this script](https://gist.githubusercontent.com/Twentysix26/73a2a09238d6875b5cb7/raw/ab4d1e45e293730c358c3e441f502bb99e8f183d/info_maker.py) (CTRL + S). Run it and *follow the instructions*. Once you're done, if everything went smoothly you should have an info.json. Put it into your cog's folder, next to the .py file.  

Now, you either:  

 * **Best way**: [Make a pull request on github](https://github.com/Twentysix26/Red-Cogs), of course by cloning the repo and putting the folder you just created inside the "cogs" folder.  
 
 * Or zip the folder and send it to the staff/dev on the server. We will take a look at it and publish it whenever we have time  

If your cog package doesn't meet the requirements it will be rejected.