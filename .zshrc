# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/andre/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

PS1='%n@%m:[$fg[cyan]%[%]%c%{$reset_color%}]$ '

source $ZSH/oh-my-zsh.sh

unsetopt share_history

alias v="vim"
alias nv="nvim"
alias xcp="xclip -selection clipboard"

alias xi="sudo xbps-install -Sv"
alias xq="xbps-query -Rs"
alias xr="sudo xbps-remove -Rv"
alias xu="sudo xbps-install -Suyv"

alias gs="git status"
alias gc="git commit"
alias gl="git log"
alias ga="git add"
alias gr="git rebase"
alias gm="git merge"
alias gb="git branch"
alias gf="git fetch --all"
alias gca="git commit --amend"
alias gpl="git pull --rebase origin"
alias gps="git push origin"
alias gch="git checkout"
alias gcp="git cherry-pick"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
