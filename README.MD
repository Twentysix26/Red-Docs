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
   * Code block should be separated from everything that comes after it by one newline.
   * Title should have one whitespace after `#` symbols. `### Like this`
   * Table should be separated from everything before and after it by one newline
   * Internal links should start with `/Red-Docs/` and have a trailing `/` like this: `[Example](/Red-Docs/example/)`
