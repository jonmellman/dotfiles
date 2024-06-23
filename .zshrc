# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

###############
# JonathanM rc

# VSCode

# Pipe clipboard to stdin, or stdout to clipboard
function clip {
	[ -t 0 ] && pbpaste || pbcopy;
}

# Auto-load nvm node version on directory change
# autoload -U add-zsh-hook
# add-zsh-hook chpwd load-nvmrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add CMake as per https://stackoverflow.com/a/52050161
PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# https://docs.conda.io/en/latest/miniconda.html
# PATH="$HOME/miniconda3/bin:$PATH" # Commented out because there are binaries I don't want to load from conda, like sqlite3
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/home/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/home/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/home/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/home/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


eval "$(fnm env --use-on-cd)"

alias fbr="git co \`git branch --sort=-committerdate | fzf\`"

# Tell oh-my-zsh to update automatically: https://stackoverflow.com/a/25876379
DISABLE_UPDATE_PROMPT=true


# https://github.com/pyenv/pyenv/issues/1853#issuecomment-847827280
if [[ $(arch) != arm64* ]]
then
	eval "$(/usr/local/bin/brew shellenv)"
	export PYENV_ROOT="$HOME/.pyenv-x86"
else
	# PATH="$PATH":/opt/homebrew/bin/
	eval "$(/opt/homebrew/bin/brew shellenv)"
	# default PYENV_ROOT => $HOME/.pyenv
fi

# Created by `pipx` on 2024-06-02 01:24:36
export PATH="$PATH:/Users/home/.local/bin"

source $HOME/.config/yadm/fzf-git.sh/fzf-git.sh

export EDITOR="code -w"
