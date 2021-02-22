alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias find-machine="python /usr/local/lib/python2.7/site-packages/krocker_compose/provisioning/server_details.py --find"
alias strace="sudo dtruss -p"
alias wireshark="Wireshark"
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
alias docker-clean="docker container ls --all | grep -i exited | awk '{print $1}' | xargs docker rm"
alias qemu="qemu-system-x86_64"
export REDDIO_LIB=/Users/sjangra/tools/reddio/share/reddio
GOPATH=~/go/
PATH=$PATH:~/scripts:~/go/bin:/Users/sjangra/nlu_krocker_compose/_krocker_env/bin/:/Users/sjangra/Library/Python/3.8/bin

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source "$HOME/.cargo/env"
