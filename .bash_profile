if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

bind '"\t":menu-complete'
bind '"\e[Z":complete'

export GOPATH=$HOME/dev/gowork
export PATH=/usr/local/bin:/usr/local/go/bin:$PATH
