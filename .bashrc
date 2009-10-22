alias ls="ls -G"
alias l="ls -Gla"
alias g="grep --exclude=\*.svn\* -r -n --color=auto"
alias f="find . -name"
alias d="du -sh"
alias e="exit"
alias sb="source ~/.bashrc"
alias sp="source ~/dev/pylons/mydevenv/bin/activate"
alias gs="git status"
alias gd="git diff"
alias gdd="git diff --cached"
alias h="history | tail"

export PS1="\[\e[31;1m\][\t]\[\e[37;1m\]\w$ \[\e[0m\]"
export PATH="/Users/darakong/dev/love_app/love.app/Contents/MacOS:/opt/local/bin:/usr/local/soylatte16-amd64-1.0.3/bin:/Users/dkong/dara:$PATH"
export JAVA_HOME="/usr/local/soylatte16-amd64-1.0.3" 

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagahad

set -o vi
