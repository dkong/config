[ -f ~/.bashrc ] && . ~/.bashrc

# Tab to cycle completion
bind '"\t":menu-complete'
# List possible completions
bind '"\e[Z":complete'

export GOPATH=$HOME/dev/gowork
export PATH=/usr/local/bin:/usr/local/go/bin:~/dev/bin:/Users/dara/dev/bin:/usr/local/opt/curl/bin:/usr/local/opt/python/libexec/bin:$PATH

source /usr/local/bin/virtualenvwrapper.sh
