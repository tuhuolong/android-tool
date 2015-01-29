#------------ android build start ------------
ulimit -S -n 1024
export PATH=/opt/local/bin:$PATH
# mount the android file image
function mountAndroid { hdiutil attach ~/workspace/android.dmg.sparseimage -mountpoint ~/workspace/AndroidDisk; }
export PATH=/opt/local/libexec/gnubin:$PATH
export GNU_COREUTILS=/opt/local/libexec/gnubin
#------------ android build end ------------



export PATH="$PATH:$HOME/android-tool/android-sdk/platform-tools"
export PATH="$PATH:$HOME/android-tool/android-sdk/tools"
export PATH="$PATH:$HOME/android-tool/android-ndk-r9d"

alias ll="ls -lh --color"
alias la="ls -lh -a --color"
alias lh="ls -lhd .* --color=auto"

# kill process
kl(){
    ps aux | grep "$1" | grep -v grep | awk '{print $2;}' | while read p; do kill -9 $p; done
}

export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad
export GREP_OPTIONS="--color=auto"

PATH=~/bin:$PATH

PATH=~/program/apache-ant-1.9.3/bin:$PATH

export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"

function openEclipse { open -a Eclipse --args -clean -refresh; }

. ~/tuhuolong.rc

function start_qujing {
  export http_proxy='theironislands.f.getqujing.net:22400'
  export HTTPS_PROXY='theironislands.f.getqujing.net:22400'
}

