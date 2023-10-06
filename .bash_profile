# BEGIN ANSIBLE MANAGED BLOCK
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
# END ANSIBLE MANAGED BLOCK
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

export PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
export PATH="${PATH}:/home/ubuntu/cli_bin"

export EDITOR="/usr/local/bin/nvim"

export EXTERNALIP=$(/usr/bin/dig +short myip.opendns.com @resolver1.opendns.com)
