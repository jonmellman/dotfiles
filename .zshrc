# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# fzf key bindings and completions
source <(fzf --zsh)

# Load fzf-git zsh widgets
source $HOME/.config/yadm/fzf-git.sh/fzf-git.sh

# Add CMake as per https://stackoverflow.com/a/52050161
PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Load directory's node version automatically
eval "$(fnm env --use-on-cd)"


unalias ll
ll() {
  local dir="${1:-.}"
  lsd -al --color=always "$dir" | \
    tail -n +3 | fzf --header="$(pwd)/$1" --ansi --multi --reverse --height=80% \
    --preview-window='right,20%'  \
    --preview-label='Contents' \
    --preview='file=$(echo {} | awk "{print \$NF}"); if [ -d "$file" ]; then lsd -1 "$file"; else head -n 20 "$file"; fi' | \
    awk '{print $NF}' | \
    paste -sd ' ' -
}


alias fbr="git co \`git branch --sort=-committerdate | fzf\`"

# Tell oh-my-zsh to update automatically: https://stackoverflow.com/a/25876379
DISABLE_UPDATE_PROMPT=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# atuin - shell history
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

# https://github.com/pyenv/pyenv/issues/1853#issuecomment-847827280
if [[ $(uname -m) == 'arm64' ]]; then
  echo M1
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ $(uname -m) == 'x86_64' ]]; then
  echo x86
  eval "$(/usr/local/bin/brew shellenv)"
#   export PYENV_ROOT="$HOME/.pyenv-x86"
fi
alias brew86="arch -x86_64 /usr/local/bin/brew"

# Created by `pipx` on 2024-06-02 01:24:36
export PATH="$PATH:/Users/home/.local/bin"

export EDITOR="code -w"

alias zshm1='env /usr/bin/arch -arm64 /bin/zsh --login'
alias zshx86='env /usr/bin/arch -x86_64 /bin/zsh --login'

# Syntax highlighting and completions must be last
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste) # https://github.com/zsh-users/zsh-autosuggestions/issues/511#issuecomment-1005375484
