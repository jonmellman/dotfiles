# dotfiles

This repository contains the settings, preferences, and tools I've come to rely on after using a Macbook Pro for NodeJS development for over 5 years.

## New Machine Setup

Setting up a new Macbook Pro for development? Check out my [machine setup checklist](NEW_MACHINE_SETUP.md)

## .zshrc
`ln -s $(pwd)/.zshrc ~/.zshrc`

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
ln -s $(pwd)/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $(pwd)/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $(pwd)/VSCode/snippets/javascript.json ~/Library/Application\ Support/Code/User/snippets/javascript.json
```
