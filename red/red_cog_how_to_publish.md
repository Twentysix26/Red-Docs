---
title: Publish your cog
sidebar: red_sidebar
permalink: /red_cog_how_to_publish/
---

In order to get added to the approved repository list, your repository must:

* Not conflict with any of the default cogs
* List all dependencies for your cogs
* Must disclose if any of your cogs require heavy cpu/memory/disk space usage
* Have a clear list of help commands and instructions
* Properly disclose if your bot displays NSFW content and have a option to disable said content
* Must explicitely declare what and if any of your modules modify/generate data outside of it's own subfolder (including posting data online). Must prompt the user with this information in order to complete an install of your cog
* Not have malicious code
* Only 1 ``.py`` per folder! As example see [this repository](https://github.com/tekulvw/Squid-Plugins)

The following list is good practice but isn't required:

* Have a Readme in the repository with general information such as:
    * The cogs in the repository and its requirements and so on
    * Your contact info, in what server can users DM you for help
* Try to make your cogs non-blocking/asynchronous
    * Avoid library's such as requests & urllib since they are blocking


Once you pass **all** requirements, you can open a [GitHub issue](https://github.com/Twentysix26/Red-Docs/issues). From there the collaborators whether to approve or decline
