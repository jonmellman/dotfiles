# dotfiles

This repository contains the settings, preferences, and tools I've come to rely on after using a Macbook Pro for NodeJS development for over 5 years.

## New Machine Setup

Setting up a new Macbook Pro for development? Check out my [machine setup checklist](NEW_MACHINE_SETUP.md)

## .zshrc
`ln -s $(pwd)/.zshrc ~/.zshrc`

## iTerm2 Settings
Follow instructions in [this StackOverflow post](https://stackoverflow.com/questions/22943676/how-to-export-iterm2-profiles), using the `iTerm/` directory in this project.

## VSCode configuration

Note that you should backup and move each of the target files before symlinking over them.

```sh
ln -s $(pwd)/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $(pwd)/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $(pwd)/VSCode/snippets/javascript.json ~/Library/Application\ Support/Code/User/snippets/javascript.json
```
