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
PATH=$PATH:~/scripts
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source "$HOME/.cargo/env"
