#This repo contains all the documentation and tutorials regarding Red-DiscordBot

[Open docs](http://Twentysix26.github.io/Red-Docs)

##How to add new docs
 * First of all you need to create a `.md` file inside the `red` dir on `gh-pages` branch.
 * Naming convention is as follows: `red_<category>_<topic>.md`. It's not strict, but please, follow it as much as possible.
 * Add a frontmatter header based off this template:
```
  ---
  title: <your_title>
  sidebar: red_sidebar
  permalink: /red_<category>_<topic>/
  ---
```
 * Write your doc in github's markdown syntax. There are a bit of jekyll-oriented exceptions, that you have to keep in mind:
   * All the block elements: list lines, code blocks, titles, tables and images should be separated from everything before and after by newlines
   * Title should have one whitespace after `#` symbols. `### Like this`
   * Internal links should start with `/Red-Docs/` and have a trailing `/` like this: `[Example](/Red-Docs/example/)`
 * After that you need to add your doc to the sidebar. You do this by oppening a `red_sidebar.yaml` which is located `_data/sidebars/`.
 * Choose a category your doc should belong to, or add a new one based off this template (indentation is important here):
```
- title: Overview
    output: web
    folderitems:
```
   * Add your page based off this template:
```
- title: Installing on Linux
      url: /red_install_linux/
      output: web
```
 * Commit your changes and push them.
