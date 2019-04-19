# dotfiles

This repository contains the settings, preferences, and tools I've come to rely on after using a Macbook Pro for NodeJS development for over 5 years.

## New Machine Setup

Setting up a new Macbook Pro for development? Check out my [machine setup checklist](NEW_MACHINE_SETUP.md)

## .zshrc
`ln -s $(pwd)/.zshrc ~/.zshrc`

## iTerm2 Profile
1. `ln -s $(pwd)/iTerm-profile.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/iTerm-profile.json`
1. iTerm2 > Preferences > Profiles. Select the new "Dynamic" profile. Other Actions > Set as Default

## VSCode configuration

Note that you should backup and move each of the target files before symlinking over them.

```sh
ln -s $(pwd)/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $(pwd)/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $(pwd)/VSCode/snippets/javascript.json ~/Library/Application\ Support/Code/User/snippets/javascript.json
```
