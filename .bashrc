source ~/.git-completion.bash

alias ls="ls -G"
alias l="ls -Gla"
alias g="grep --exclude=\*.svn\* -r -n --color=auto"
alias d="du -sh"
alias e="exit"
alias sb="source ~/.bashrc"
alias h="history | tail"
alias ux="ushare -x"
alias c="clear"
alias a="ack --smart-case"
alias ajs="ack --smart-case --js"
alias acss="ack --smart-case --css"
alias ahtml="ack --smart-case --html"
alias v="~/Downloads/MacVim-snapshot-64/mvim -v"
alias vr="vim -R"
alias pa="ps aux | grep"
alias u="cd .."
alias ipp='ifconfig | grep "inet 192"'
alias s='s3cmd'

alias cdt="cd ~/loyalize/Clients"
alias cdg="cd ~/loyalize/GameServer"
alias cds="cd ~/loyalize"
alias cdf="cd ~/fx"
alias cdn="cd ~/loyalize/nob"
alias cdp="cd ~/loyalize/Puppet/puppet/files/opt/loyalize/deploy"

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
alias gld="git log --"
alias ga="git add"
alias gp="git push origin HEAD"
alias gu="git reset HEAD"
alias gco="git checkout"
alias gpu="git pull"
alias gpl="git pull --rebase"
alias gb="git branch"
alias gr="git checkout -p --"
alias gbb="git status | head -n 1"
alias gt="git stash"
alias gts="git stash save"
alias gta="git stash apply"
alias gtl="git stash list"
alias grr="git checkout -- public/phone/index.html public/tablet/index.html public/widgets/loyalizeWidgets.js"
alias gm="git mergetool -y"
alias gbl="git blame"
alias gittags='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'
alias gitpatch='git format-patch'
alias gsh='git show'
alias gcp='git cherry-pick'

function f() {
    if [ "$2" ]
    then
        find "$2" -name .git -prune -o -name "$1" -print
    else
        find . -name .git -prune -o -name "$1" -print
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

function ut() {
    perl -e "print scalar(gmtime($1))"
    echo
}


# SVN shortcuts
alias ss="svn st"
alias sd="svn diff"
#alias sd="svn diff | less"
alias sc="svn ci"
alias sl="svn log -l5 | less"
alias sr="svn revert"
alias svu="svn update"

export PS1="\[\e[31;1m\][\t]\[\e[37;1m\]\w$ \[\e[0m\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagahad

set -o vi

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# Whenever displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'

export HISTSIZE=20000
export HISTFILESIZE=20000

export PATH=~/Downloads/android-sdk-macosx/tools:/usr/local/bin:$PATH
export ANDROID_SDK_PATH=~/Downloads/android-sdk-macosx
export BUILDTROP_PATH=~/loyalize/Clients

export NODE_PATH=/usr/local/lib/node_modules/npm:/usr/local/lib/jsctags:$NODE_PATH
