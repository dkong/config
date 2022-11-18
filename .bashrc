alias l="ls -Glaph"
alias e="exit"
alias sb="source ~/.bashrc"
alias c="clear"
alias a="ack --smart-case"
alias v="vim"
alias t='tmux'
alias p='python'

alias myip="curl https://ifconfig.me; echo; echo"

alias k='kubectl'
alias kk='k9s --logoless'
alias kp='k9s --logoless -n presence'
alias ko='k9s --logoless -n objects'

alias d='docker'
alias dr='docker run --rm -ti'

# Git shortcuts
alias gs="git status --short"
alias gd="git diff --color"
alias gdd="git diff --cached --color"
alias gc="git commit -v"
alias gl="git log"
alias gll='git log --pretty=format:"%Cred%h%Creset %C(white)%ad%Creset | %s %C(cyan)[%an]%Creset" --date=local'
alias ga="git add"
alias gp="git push origin HEAD"
alias gu="git reset HEAD"
alias gco="git checkout"
alias gpl="git pull --rebase"
alias gb="git branch --sort=-committerdate"
alias gr="git checkout -p --"
alias gt="git stash"
alias gta="git stash apply"
alias gbl="git blame"
alias gtt='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'
alias gsh='git show -w'
alias gcp='git cherry-pick'
alias glp='git log -p --all -S'

alias cdd='cd ~/dev'

alias nocolors="sed $'s,[\x01-\x1F\x7F][[0-9;]*[a-zA-Z],,g'"

function f() {
    if [ "$2" ]
    then
        find "$2" -iname .git -prune -o -iname "*$1*" -print
    else
        find . -iname .git -prune -o -iname "*$1*" -print
    fi
}

function gla() {
    if [ "$2" ]
    then
        git log -i --author="$1" "$2"
    else
        git log -i --author="$1"
    fi
}

function glg() {
    if [ "$2" ]
    then
        git log --grep="$1" -i "$2"
    else
        git log --grep="$1" -i
    fi
}

function glag() {
    if [ "$3" ]
    then
        git log --author="$1" --grep="$2" "$3"
    else
        git log --author="$1" --grep="$2"
    fi
}

function git-release() {
    git tag -a "$1" -m ":arrow_up: $1" && git push origin "$1"
}

# epoch to localtime
function lt() {
    perl -e "print scalar(localtime($1))"
    echo
}

# epoch to utc
function ut() {
    perl -e "print scalar(gmtime($1))"
    echo
}

# pn tt to localtime
function plt() {
    perl -e "print scalar(localtime($1 / 10000000))"
    echo
}

# pn tt to utc
function put() {
    perl -e "print scalar(gmtime($1 / 10000000))"
    echo
}

# milliseconds to localtime
function mlt() {
    perl -e "print scalar(localtime($1 / 1000))"
    echo
}

# milliseconds to utc
function mut() {
    perl -e "print scalar(gmtime($1 / 1000))"
    echo
}

function up {
    ups=""
    for i in $(seq 1 $1)
    do
            ups=$ups"../"
    done
    cd $ups
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagahad

set -o vi

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# Whenever displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'

export HISTSIZE=20000
export HISTFILESIZE=20000
export HISTIGNORE="[lvct]:cc:cd[pndosa]:k:gdi:gco:gtl:gta:gpl:g[tslcapbdu]:gco .:gc .:view:tmux:ls:cd -:sb:python:wp"
export HISTCONTROL=ignoreboth

export MY_BREW_PREFIX=/usr/local
if [ -f $MY_BREW_PREFIX/etc/bash_completion ]; then
    . $MY_BREW_PREFIX/etc/bash_completion
fi

if [ -f "$MY_BREW_PREFIX/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR=$MY_BREW_PREFIX/opt/bash-git-prompt/share

    source "$MY_BREW_PREFIX/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Auto-complete ssh/scp for known connections
complete -d cd

function split_lines() {
    echo $1 | tr ',' '\n' | sed 's/^ */* /g' | sed 's/$/ -/g' | pbcopy
}

function strip_chars() {
    sed $'s,[\x01-\x1F\x7F][[0-9;]*[a-zA-Z],,g' $1
}

RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

PS1="${RED}\t ${GREEN}\w [\$(git symbolic-ref --short HEAD 2>/dev/null)] ${RESET}$ "
source "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
. "$HOME/.cargo/env"
