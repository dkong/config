if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

bind '"\t":menu-complete'
bind '"\e[Z":complete'

export GOROOT=/usr/local/go
export GOPATH=~/dev/gogo
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:$GOROOT/bin
