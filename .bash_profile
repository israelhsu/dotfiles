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

# BEGIN Source .bashrc
if [[ -f ~/.bashrc ]]; then
    source ~/.bashrc
fi
# END Source .bashrc
