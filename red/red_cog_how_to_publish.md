---
title: Publish your cog repo
sidebar: red_sidebar
permalink: /red_cog_how_to_publish/
---

To give a better chance of approval to developers of all skils *there are two different lists*. The **approved list**, where high quality is expected (cogs that bring useful features to the community and are well documented). And the **beta list**, where approval rules are much more lax: basic functionality, non-conflict with the base bot, non-malicious code are still expected.

### General rules (for both lists):  

* Not conflict with any of the default cogs
* Not have features that are already in Red (enhancements are ok)
* At least 3 cogs. Exceptions can be made if one cog is complex / notable enough.
* List all dependencies for your cogs
* Must disclose if any of your cogs require heavy cpu/memory/disk space usage
* Must explicitly declare what and if any of your modules modify/generate data outside of it's own subfolder (including posting data online). Must prompt the user with this information in order to complete an install of your cog
* Not have malicious code
* Only 1 ``.py`` per folder! As example see [this repository](https://github.com/Twentysix26/26-Cogs)
* Properly disclose if your cog displays NSFW content
* People who worked on a cog must be properly credited

### Good practice:  

* Each ``.py`` file must be accompanied by an info.json, to give a better idea about what each cog does. [This is the format guide](http://twentysix26.github.io/Red-Docs/red_cog_info_json/). You can create them with [this script](https://gist.github.com/Twentysix26/73a2a09238d6875b5cb7). See repo linked above for examples.
* Have a Readme in the repository with general information such as:
    * The cogs in the repository and its requirements and so on
    * Your contact info, in what server can users DM you for help
* Try to make your cogs non-blocking/asynchronous
    * Avoid library's such as requests & urllib since they are blocking

### Rules for approved list:  

* Respect all previous points
* Your cogs must bring unique features to the community
* Have a clear list of help commands and instructions
* Clean code is preferred but not necessarily required

Once you pass **all** requirements, you can open a [GitHub issue](https://github.com/Twentysix26/Red-Docs/issues), specifying which list you are applying to. From there it's up to the collaborators whether to approve or decline. Please include the following template.

```
List: [approved/beta]
Repository name:
Author:
Description:
```

Accepting/denying your request is entirely up to the collaborators, regardless of the guidelines above.
