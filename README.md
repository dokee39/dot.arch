# dot.arch

```bash
#!/bin/sh

# hello
echo "\e[1;36mHello, let's start backup...\e[0;0m\n"

# interrupt handle
trap 'echo $( date ) Backup interrupted >&2; exit 2' INT TERM

# set vars
export MYHOME=/home/dokee
export GIT_REPO=/home/dokee/Documents/backup/dot.arch
export RSYNC_OPT="-arqh --delete --exclude='*cache*' --exclude='session'"
global_exit=0

# sync functions
sync_sp() {
    rsync ${RSYNC_OPT} "$1" "$2"
    ret=$?
    if [ $ret -ne 0 ]; then
        global_exit=$ret
        info "Error during sync_sp: $1 -> $2, rsync exit code: $ret"
    fi
}

sync() {
    mkdir -p "$(dirname ${GIT_REPO}/$1)"
    sync_sp "${MYHOME}/$1" "$(dirname ${GIT_REPO}/$1)"
}

info() {
    printf "\n%s %s\n\n" "$( date )" "$*" >&2
}

# start backup
info "Starting backup <dot files>"
sync .mysh
sync .gitconfig
sync .tmux.conf
sync .Xresources
sync .zshrc

info "Starting backup <config files>"
sync .config/alacritty
sync .config/btop
sync .config/fcitx5
sync .config/hypr
sync .config/mako
sync .config/nvim
sync .config/qt6ct
sync .config/ranger
sync .config/tofi
sync .config/waybar
sync .config/electron-flags.conf

info "Starting backup <app desktop files>"
sync Documents/backup/desktop_backup

info "Starting backup <game save data>"
sync_sp ${MYHOME}/.local/share/bottles/bottles/AliceInCradle/drive_c/users/steamuser/AppData/LocalLow/NanameHacha/AliceInCradle ${GIT_REPO}/Apps/Games/AliceInCradle/SaveData
sync Apps/Games/Butter/sakuranotoki/savedata_cn
sync "Apps/Games/Touhou Project/official games/th06/replay"
sync "Apps/Games/Touhou Project/official games/th06/score.dat"
sync "Apps/Games/Touhou Project/official games/th06/scorec.dat"
sync "Apps/Games/Touhou Project/official games/th07/replay"
sync "Apps/Games/Touhou Project/official games/th07/score.dat"
sync "Apps/Games/Touhou Project/official games/th08/replay"
sync "Apps/Games/Touhou Project/official games/th08/score.dat"
sync "Apps/Games/Touhou Project/official games/th09/replay"
sync "Apps/Games/Touhou Project/official games/th09/score.dat"
sync "Apps/Games/Touhou Project/official games/th10/replay"
sync "Apps/Games/Touhou Project/official games/th10/scoreth10.dat"
sync "Apps/Games/Touhou Project/official games/th11/replay"
sync "Apps/Games/Touhou Project/official games/th11/scoreth11.dat"

info "Starting backup <package list>"
pacman -Qqe > ${MYHOME}/Documents/backup/pkglist.txt
sync Documents/backup/pkglist.txt

# git repo push
info "Starting backup <git repo push>"
cd ${GIT_REPO}
sudo -u dokee git add .
sudo -u dokee git status -s
if [ "$(sudo -u dokee git status -s)" ];then
    sudo -u dokee git commit -m "Synced on $(date)"
    sudo -u dokee git push -q
    ret=$?
    if [ $ret -ne 0 ]; then
        global_exit=$ret
        info "Error during git push, exit code: $ret"
    else
        info "<github repo> : Synced on $(date)"
    fi
else 
    info "<github repo> : GitHub repositories do not need to be synchronized"
fi
cd -

# Handle errors and retry after 1 hour if needed
if [ $global_exit -ne 0 ]; then
    notify-send "Backup Error!" "Retrying backup in 1 hour..." -u critical
    echo "Retrying backup in 1 hour..."
    sleep 1h
    exec $0  # Re-run the script
fi

exit ${global_exit}

#!/bin/sh
```

