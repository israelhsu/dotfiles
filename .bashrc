# BEGIN LC_ALL=C
export LC_ALL="C"
# END LC_ALL=C
# BEGIN GOROOT BLOCK
if [ -d /opt/go ]; then
    export PATH=/opt/go/bin:$PATH
    export GOROOT=/opt/go
fi
# END GOROOT BLOCK
# BEGIN NODE IN PATH
export PATH="$PATH:/opt/node/bin" # Add NODE to PATH
# END NODE IN PATH
# BEGIN ULIMITS BLOCK
ulimit -v 65011712
ulimit -n 64000
ulimit -u 64000
ulimit -l 1024
# END ULIMITS BLOCK
# BEGIN ULIMITS BLOCK WT
ulimit -c unlimited
# END ULIMITS BLOCK WT

# BEGIN Source server_bashrc.sh
source /home/ubuntu/mongodb-mongo-master/server-workflow-tool/server_bashrc.sh
# END Source server_bashrc.sh

# BEGIN CR Tool JIRA Username
export JIRA_USERNAME=israel.hsu
# END CR Tool JIRA Username

# BEGIN UndoDB License Config
export UNDO_user='israel.hsu'
# END UndoDB License Config

# BEGIN UndoDB Aliases
alias udb='/opt/undodb5/bin/udb --undodb-gdb-exe /opt/mongodbtoolchain/gdb/bin/gdb'
#alias gdb='/opt/undodb5/bin/udb --undodb-gdb-exe /opt/mongodbtoolchain/gdb/bin/gdb'
alias gdb='/opt/mongodbtoolchain/gdb/bin/gdb'
# END UndoDB Aliases

numcolors=$(tput colors)
if [ -f ~/.aliases ]; then . ~/.aliases; fi

if [ -n "$numcolors" ] && [ "$numcolors" -ge 8 ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\e[1;30m\]$? \[\e[0;32m\]\A\e[m \[\e[0;34m\]\u@\h\[\e[0;33m\]:\w\[\e[1m\e[0;30;43m\]\$\[\e[m\] '
else
	PS1='${debian_chroot:+($debian_chroot)}$? \A \u@\h:\w\$ '
fi

# BEGIN pipx config
# pipx will install binaries to "~/.local/bin"
export PATH="/opt/undodb5/bin:/opt/cmake/bin:/opt/rtags-2.38/bin:/opt/mongodbtoolchain/gdb/bin:/opt/go/bin:/opt/go/bin:/opt/undodb5/bin:/opt/cmake/bin:/opt/rtags-2.38/bin:/opt/mongodbtoolchain/gdb/bin:/opt/go/bin:/opt/undodb5/bin:/opt/cmake/bin:/opt/rtags-2.38/bin:/opt/mongodbtoolchain/gdb/bin:/opt/go/bin:/opt/undodb5/bin:/opt/cmake/bin:/opt/rtags-2.38/bin:/opt/mongodbtoolchain/gdb/bin:/opt/go/bin:/opt/go/bin:/opt/undodb5/bin:/opt/cmake/bin:/opt/rtags-2.38/bin:/opt/mongodbtoolchain/gdb/bin:/opt/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/node/bin:/opt/node/bin:/home/ubuntu/cli_bin:/opt/node/bin:/opt/node/bin:/opt/node/bin:/opt/node/bin:/home/ubuntu/cli_bin:/opt/node/bin:/home/ubuntu/.local/bin:/home/ubuntu/.local/bin"
# END pipx config

export PATH="$PATH:$HOME/bin"
