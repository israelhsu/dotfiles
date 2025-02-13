# Distribution bin locations
export PATH=/usr/locar/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin
# MongoDB tools
PATH=/opt/mongodbtoolchain/v4/bin:/opt/undodb5/bin:/opt/rtags-2.38/bin:${PATH}
# Locally installed
PATH=/snap/bin:$HOME/.local/bin:${PATH}
# Personal scripts
PATH=$HOME/bin:${PATH}

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
# END UndoDB Aliases

# Stuff for interactive shells only:
if [[ $- == *i* ]]; then
	if [ -f ~/.aliases ]; then . ~/.aliases; fi

	export EDITOR="/snap/bin/nvim"

	export HISTCONTROL=ignoreboth
	export HISTSIZE=-1
	export HISTFILESIZE=-1
	shopt -s histappend

	source $HOME/bin/.git-prompt.sh

	numcolors=$(tput colors)
	if [ -n "$numcolors" ] && [ "$numcolors" -ge 8 ]; then
		PS1="${debian_chroot:+($debian_chroot)}\[\e[0;2;36m\]$? \[\e[0;2;34m\]\A\[\e[m\] \[\e[0;34m\]\u@${HOSTNAME}\[\e[0;33m\]\w\[\e[0;2;33m\]\$(__git_ps1 \"|%s\")\[\e[1m\e[1;30;43m\]\$\[\e[m\] "
		if [ -x /usr/bin/dircolors ]; then
			test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
			alias ls='ls --color=auto'
		fi
	else
		PS1='${debian_chroot:+($debian_chroot)}$? \A \u:\w$(__git_ps1 "(%s)")\$ '
	fi

	# Disable terminal control flow (CTRL-S and CTRL-Q)
	stty -ixon -ixoff
fi


# BEGIN pipx config
# pipx will install binaries to "~/.local/bin"
# END pipx config

export PATH="${PATH}:/home/ubuntu/cli_bin"


