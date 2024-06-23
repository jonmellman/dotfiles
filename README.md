# dotfiles

This repository documents the settings, preferences, and tools I've come to rely on after using a Macbook Pro for over 5 years. My configurations are primarily for NodeJS development, but I dip my toes elsewhere as well.

## Submodule setup

This repo contains git submodules. After cloning, you must initialize them separately:
```sh
git submodule update --init
```

## New Machine Setup

Setting up a new Macbook Pro for development? Check out my [machine setup checklist](NEW_MACHINE_SETUP.md)

## .zshrc
`ln -sf $(pwd)/.zshrc ~/.zshrc`

## fzf-git
```sh
git clone https://github.com/junegunn/fzf-git.sh.git
```

## iTerm2 Settings

These iTerm2 settings come with nice colors and hotkeys.

Hotkeys for more natural text manipulation include:
* `⌘Z` - Undo
* `⌘←Delete` - Delete everything before cursor
* `⌥←Delete` - Delete first word before cursor
* `⌥←`, `⌥→`  - Jump cursor to previous/next word
* `⌘←`, `⌘→`  - Jump cursor to start/end of line

To install:
1. Go to iTerm > Preference.
2. Check "Load Preferences from a custom folder or URL"
3. Paste this URL: https://raw.githubusercontent.com/jonmellman/dotfiles/master/iTerm/com.googlecode.iterm2.plist

You may need to restart iTerm.

## VSCode configuration

Note that you should backup and move each of the target files before symlinking over them.

```sh
ln -sf $(pwd)/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf $(pwd)/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# Remove snippets/ before symlinking - necessary for directories.
rm -rf ~/Library/Application\ Support/Code/User/snippets && ln -sf $(pwd)/VSCode/snippets ~/Library/Application\ Support/Code/User/snippets
```

## .gitignore_global

As per http://egorsmirnov.me/2015/05/04/global-gitignore-file.html:

```sh
ln -s $(pwd)/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```
