source ~/.git-completion.bash

alias ls="ls -G"
alias l="ls -Gla"
alias g="grep --exclude=\*.svn\* -r -n --color=auto"
alias f="find . -name"
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
alias v="vim"
alias vr="vim -R"
alias pa="ps aux | grep"
alias u="cd .."

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
alias gll='git log --pretty=format:"%h %ad | %s [%an]" --date=local'
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

complete -o bashdefault -o default -o nospace -F _git_diff gd
complete -o bashdefault -o default -o nospace -F _git_commit gc
complete -o bashdefault -o default -o nospace -F _git_log gl
complete -o bashdefault -o default -o nospace -F _git_add ga
complete -o bashdefault -o default -o nospace -F _git_checkout gco
complete -o bashdefault -o default -o nospace -F _git_push gp
complete -o bashdefault -o default -o nospace -F _git_pull gpu
complete -o bashdefault -o default -o nospace -F _git_branch gb
complete -o bashdefault -o default -o nospace -F _git_stash gt

function f() {
    if [ "$2" ]
    then
        find "$2" -iname "$1"
    else
        find . -iname "$1"
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

function sshh() {
ssh dara@$1.$2.loyalize.tv
}

# SVN shortcuts
alias ss="svn st"
alias sd="svn diff"
#alias sd="svn diff | less"
alias sc="svn ci"
alias sl="svn log -l5 | less"
alias sr="svn revert"
alias svu="svn update"

export MAGICK_HOME=/Users/darakong/Downloads/ImageMagick-6.6.3
export PS1="\[\e[31;1m\][\t]\[\e[37;1m\]\w$ \[\e[0m\]"
export PATH="/Users/darakong/dev/love/bin/love.app/Contents/MacOS:/opt/local/bin:/usr/local/soylatte16-amd64-1.0.3/bin:/Users/dkong/dara:~/dev/jamplus/bin/macosxx64:~/dev/android/android-sdk-mac_86/tools:$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"
export JAVA_HOME="/usr/local/soylatte16-amd64-1.0.3" 
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/Library/Frameworks/Mono.framework/Versions/2.6.4/lib/pkgconfig"
export SVN_EDITOR="vi"
export PYTHONPATH=$PYTHONPATH:~/lib/python

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagahad

set -o vi

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# Whenever displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'
