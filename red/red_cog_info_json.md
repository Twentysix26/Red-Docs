---
title: Info.json format
sidebar: red_sidebar
permalink: /red_cog_info_json/
last_updated: April 5, 2017
toc: false
description: Information on the info.json file for 3rd party repositories
---

A info.json will provide information about the repository or cog the end user is installing. What the info.json can provide are a set of messages. These messages will be displayed on actions the end user is taking.

### Repository info.json
A repository info.json sits at the root level of the repository (Before the cog folders). The following format is used for this info.json

```json
{
    "AUTHOR" : "Author name",
    "INSTALL_MSG" : "A install message that appears as soon as the end user does !cog repo add",
    "NAME" : "Repository Name",
    "SHORT" : "A short description, appears on !cog list",
    "DESCRIPTION" : "A longer description, appears on !cog info repo"
}
```

### Cog info.json
A cog info.json sits in the cog folder (Besides the ``.py``). These are unique
per cog. And can be changed per cog. The following format is used for them.

```json
{
    "AUTHOR" : "Author name",
    "INSTALL_MSG" : "A install message that appears as soon as the end user does !cog install repo cogname",
    "NAME" : "The class name of the cog, MUST BE matching, including capitalization",
    "SHORT" : "A Short description, appears on !cog list repo",
    "DESCRIPTION" : "A longer description, appears on !cog list repo cogname",
    "TAGS" : ["example", "tags", "list"],
    "REQUIREMENTS" : ["tabulate", "Pillow"]
}
```

The `REQUIREMENTS` key is used when installing the cog. Before it is loaded,
the installer ensures that those packages are installed via `pip`.

The `TAGS` key is used on our official cogs library portal, [cogs.red](https://cogs.red/)

#### Info.json maker:
[Link](https://gist.github.com/Twentysix26/73a2a09238d6875b5cb7)

#### Example repo:
[Link](https://github.com/Twentysix26/26-Cogs)
