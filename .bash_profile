if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

bind '"\t":menu-complete'


# MacPorts Installer addition on 2009-04-11_at_19:04:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-04-11_at_19:04:48: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

