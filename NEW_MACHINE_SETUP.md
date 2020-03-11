So you got a new computer or lost your old settings. Here's how I configure my machines for my development workflow.

- [ ] System setup
    - [ ] [Optimize system key repeat](https://apple.stackexchange.com/a/83923)
     and trackpad tracking speed
    - [ ] [Hide dock and update animation speed](https://www.idownloadblog.com/2015/02/14/auto-hide-dock-no-delay-mac/)
    - [ ] Install [Spectacle](https://www.spectacleapp.com/) for window management
    - [ ] Install [Flycut](https://itunes.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12) for clipboard management
        * Note: If you have issues with Spectacle and Flycut hotkeys clashing, you can disable Spectactle when Flycut is focused.
    - [ ] [Rebind caps lock to escape](https://stackoverflow.com/a/40254864)
    - [ ] Accessibility > enable "scroll gesture with modifier keys to zoom"
    - [ ] Install font [Ligconsolata](https://github.com/googlefonts/Inconsolata/tree/master/fonts/otf). This is [Inconsolata](https://fonts.google.com/specimen/Inconsolata?selection.family=Inconsolata) but with ligatures.
    - [ ] Better touchbar: https://github.com/niw/HapticKey
    - [ ] Install Homebrew: https://brew.sh/
- [ ] Editor setup
    - [ ] Install VS Code
    - [ ] Download extensions
    - [ ] Install Sublime Text and [Afterglow theme](https://github.com/YabataDesign/afterglow-theme)
- [ ] Terminal setup
    - [ ] Install [iTerm2](https://www.iterm2.com/)
    - [ ] Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
    - [ ] Install [fzf and enable fuzzy completions](https://sourabhbajaj.com/mac-setup/iTerm/fzf.html)
    - [ ] Load dotfiles (.bashrc, .zshrc, .zshenv)
    - [ ] Install [ripgrep](https://github.com/BurntSushi/ripgrep) for a faster, more modern grep
    - [ ] Set font to [Ligconsolata](https://github.com/googlefonts/Inconsolata/tree/master/fonts/otf)
    - [ ] Set up Touch ID auth for sudo: http://osxdaily.com/2017/11/22/use-touch-id-sudo-mac/
        * If this doesn't work in your iTerm: https://gitlab.com/gnachman/iterm2/issues/7608
    - [ ] Set up Touch ID auth for SSH: https://github.com/sekey/sekey
- [ ] NodeJS setup
    - [ ] Install [nvm](https://github.com/creationix/nvm)
    - [ ] Install the latest stable version of Node: `nvm install --lts`
