EDITOR="code -r -w"

adbwifi() {
    adb disconnect;
    adb tcpip 5555;
    sleep 2;
    adb connect "$(adb shell ip addr show wlan0  | grep 'inet ' | cut -d' ' -f6 | cut -d/ -f1)";
}

ggm() { git add --all && git commit -m "$*"; }
alias ggs="git add --all && git commit --amend --no-edit"
alias ggss="git add --all && git commit --amend"
alias ggr="git fetch && git rebase origin/master"
alias ggri="git fetch && git rebase -i origin/master"
alias ggp="git push"
alias ggpf="git push --force-with-lease"
alias ggl="git log --oneline"
alias ggk="git checkout -"
alias ggf="git fetch"
alias ggfc="git fetch && git checkout"
