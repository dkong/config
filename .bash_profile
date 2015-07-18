if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

bind '"\t":menu-complete'
bind '"\e[Z":complete'

export GOROOT=/usr/local/go
export GOPATH=~/dev/gogo
#export PATH=/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$GOROOT/bin:$GOPATH/bin:/Users/dara/dev/redis-2.8.0-rc4/src:/Users/dara/dev/lua5.2.1:/Users/dara/dev/youtube-dl:$PATH
export PATH=/usr/local/bin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
