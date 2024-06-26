So you got a new computer or lost your old settings. Here's how I configure my machines for my development workflow.

```sh
yadm bootstrap
yadm submodule update --init
```

- [ ] System setup
    - [ ] Install [Flycut](https://itunes.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12) for clipboard management
    - [ ] [Rebind caps lock to escape](https://stackoverflow.com/a/40254864)
    - [ ] Accessibility > enable "scroll gesture with modifier keys to zoom"
- [ ] Terminal setup
    - [ ] Install [fzf and enable fuzzy completions](https://sourabhbajaj.com/mac-setup/iTerm/fzf.html)

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
3. Paste this URL: https://raw.githubusercontent.com/jonmellman/dotfiles/main/com.googlecode.iterm2.plist

You may need to restart iTerm.
