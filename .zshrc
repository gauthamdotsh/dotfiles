# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/gautham/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Open VS Code from Terminal
#code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Github config for Android
export GITHUB_USER=gauthamdotsh
export GITHUB_TOKEN=

# Flutter config
export PATH="$PATH:/Users/gautham/git/Personal/flutter/bin"

# Android config
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH="${JAVA_HOME}/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${PATH}"
export ANDROID_SDK_ROOT=${HOME}/Library/Android/sdk

eval "$(/Users/gautham/.local/bin/mise activate zsh)"
export PATH="$PATH:/opt/homebrew/opt/node@20/bin"

# Aliases
alias java-20="export JAVA_HOME=`/usr/libexec/java_home -v 20`; java -version"
alias java-17="export JAVA_HOME=`/usr/libexec/java_home -v 17`; java -version"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/gautham/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
eval "$(pyenv init -)"

# Hotkey for tmux-sessionizer
bindkey -s ^f "tmux-sessionizer\n"

# Frappe
export PATH="/opt/homebrew/opt/mariadb-connector-c/bin:$PATH"
export PATH="/opt/homebrew/opt/mariadb@11.8/bin:$PATH"
