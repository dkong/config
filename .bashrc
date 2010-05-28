alias ls="ls -G"
alias l="ls -Gla"
alias g="grep --exclude=\*.svn\* -r -n --color=auto"
alias f="find . -name"
alias d="du -sh"
alias e="exit"
alias sb="source ~/.bashrc"
alias sp="source ~/dev/pylons/mydevenv/bin/activate"
alias h="history | tail"
alias ux="ushare -x"

# Git shortcuts
alias gs="git status"
alias gsi="git ls-files --others -i --exclude-standard"
alias gd="git diff --color"
alias gdd="git diff --cached --color"
alias gc="git commit -v"
alias gl="git log"

# SVN shortcuts
alias ss="svn st"
alias sd="svn diff | less"
alias sc="svn ci"
alias sl="svn log -l5 | less"
alias sr="svn revert"

export PS1="\[\e[31;1m\][\t]\[\e[37;1m\]\w$ \[\e[0m\]"
export PATH="/Users/darakong/dev/love_app/love.app/Contents/MacOS:/opt/local/bin:/usr/local/soylatte16-amd64-1.0.3/bin:/Users/dkong/dara:~/dev/jamplus/bin/macosxx64:$PATH"
export JAVA_HOME="/usr/local/soylatte16-amd64-1.0.3" 
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
export SVN_EDITOR="vi"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagahad

set -o vi

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# Whenever displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'
