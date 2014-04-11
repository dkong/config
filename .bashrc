source ~/.git-completion.bash

alias ls="ls -G"
alias l="ls -Gla"
alias d="du -sh"
alias e="exit"
alias sb="source ~/.bashrc"
alias h="history | tail"
alias c="clear"
alias a="ack --smart-case"
alias v="~/Downloads/MacVim-snapshot-70/mvim -v"
alias vr="~/Downloads/MacVim-snapshot-70/mvim -vr"
alias ipp='ifconfig | grep "inet 192"'
alias s='s3cmd'

# Git shortcuts
alias gs="git status"
alias gsi="git ls-files --others -i --exclude-standard"
alias gd="git diff --color"
alias gdi="git diff --no-ext-diff --color"
alias gdiw="git diff --no-ext-diff --color -w"
alias gdd="git diff --cached --color"
alias gc="git commit -v"
alias gl="git log"
alias glf="git log --follow"
alias gll='git log --pretty=format:"%Cred%h%Creset %C(white)%ad%Creset | %s %C(cyan)[%an]%Creset" --date=local'
alias gls="git log --summary"
alias ga="git add"
alias gp="git push origin HEAD"
alias gu="git reset HEAD"
alias gco="git checkout"
alias gpl="git pull --rebase"
alias gb="git branch"
alias gr="git checkout -p --"
alias gt="git stash"
alias gts="git stash save"
alias gta="git stash apply"
alias gtl="git stash list"
alias gm="git mergetool -y"
alias gbl="git blame"
alias gittags='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'
alias gitpatch='git format-patch'
alias gsh='git show -w'
alias gcp='git cherry-pick'

function f() {
    if [ "$2" ]
    then
        find "$2" -iname .git -prune -o -iname "$1" -print
    else
        find . -iname .git -prune -o -iname "$1" -print
    fi
}

function gla() {
    if [ "$2" ]
    then
        git log --author="$1" "$2"
    else
        git log --author="$1"
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

function lt() {
    perl -e "print scalar(localtime($1))"
    echo
}

function et() {
    perl -e "print scalar(localtime($1 + 10800))"
    echo
}

function ut() {
    perl -e "print scalar(gmtime($1))"
    echo
}

export PS1="\[\e[31;1m\][\t|\h]\[\e[37;1m\]\w$ \[\e[0m\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagahad

set -o vi

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# Whenever displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'

export HISTSIZE=20000
export HISTFILESIZE=20000
export HISTIGNORE="[lvc]:cd[pndo]:k:g[slcapbd]?:view:tmux:ls:cd *:sb"
export HISTCONTROL=ignoreboth

source ~/.bash-git-prompt/gitprompt.sh

export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh
