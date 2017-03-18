alias l="ls -Glaph"
alias d="du -sh"
alias e="exit"
alias sb="source ~/.bashrc"
alias c="clear"
alias cc="clear && tmux clear-history"
alias a="ack --smart-case"
alias v="vi"
alias t='tmux'
alias p='python'
alias rs='rsync -avu --progress'

# Git shortcuts
alias gs="git status --short"
alias gsi="git ls-files --others -i --exclude-standard"
alias gd="git diff --color"
alias gdi="git diff --no-ext-diff --color"
alias gdiw="git diff --no-ext-diff --color -w"
alias gdd="git diff --cached --color"
alias gc="git commit -v"
alias gl="git log"
alias gll='git log --pretty=format:"%Cred%h%Creset %C(white)%ad%Creset | %s %C(cyan)[%an]%Creset" --date=local'
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
alias gbl="git blame"
alias gittags='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'
alias gitpatch='git format-patch'
alias gsh='git show -w'
alias gcp='git cherry-pick'

alias cdd='cd ~/dev'
alias cdl='cd ~/Downloads'

# Pubnub
alias cdp='cd ~/pubnub/code'
alias cdb='cd ~/pubnub/code/blocks'
alias cds='cd ~/pubnub/code/pubnub-presence'
alias cdpp='cd ~/pubnub/code/pubnub-push'
alias cda='cd ~/pubnub/code/pubnub-deploy/provisioning'
alias cdv='cd ~/pubnub/code/pubnub-deploy/vagrant-boxes/pubnub'
alias wp='workon pubnub'

alias ssh_shell='ssh shell1.ibm-sjc-1.ps.pn -A'
alias ssh_shell2='ssh shell2.ibm-sjc-1.ps.pn -A'
alias curlt="curl -w '\nTime Total: %{time_total}\n'"

alias gist='gist -p'

alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'

function vc() {
    vagrant ssh-config $1 | egrep -i "hostname|user|port|IdentityFile"
}

function sshu() {
    ssh ubuntu@$1 -i ~/.ssh/pubnub-2017-q1.key -A $2
}

function scpu() {
    scp -C -i ~/.ssh/ec2.pubnub-global.pem $1 $2
}

function ip() {
    ack $1 ~/pubnub/code/pubnub-deploy/provisioning/regions
}

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

# pubnub tt to localtime
function plt() {
    perl -e "print scalar(localtime($1 / 10000000))"
    echo
}

# pubnub tt to utc
function put() {
    perl -e "print scalar(gmtime($1 / 10000000))"
    echo
}

# milliseconds to localtime
function mlt() {
    perl -e "print scalar(localtime($1 / 1000000))"
    echo
}

# milliseconds to utc
function mut() {
    perl -e "print scalar(gmtime($1 / 1000000))"
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

function setaws {
    export AWS_ACCESS_KEY_ID=`grep $1 ~/.aws/credentials -A2 | grep aws_access_key_id | awk {'print $3'}`
    export AWS_SECRET_ACCESS_KEY=`grep $1 ~/.aws/credentials -A2 | grep aws_secret_access_key | awk {'print $3'}`
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

export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

export AWS_CONFIG_FILE=~/.aws/config

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Custom
    GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh

    __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Auto-complete ssh/scp for known connections
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" scp
complete -d cd
