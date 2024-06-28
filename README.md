# my-arch-unforgettable

## my butter savedata XD


```bash
# upload to github
info "Starting backup <github repo>"

mklink ${MYHOME}/.config/alacritty ${GIT_REPO}/.config/alacritty > /dev/null
mklink ${MYHOME}/.config/btop ${GIT_REPO}/.config/btop > /dev/null
mklink ${MYHOME}/.config/fcitx5 ${GIT_REPO}/.config/fcitx5 > /dev/null
mklink ${MYHOME}/.config/hypr ${GIT_REPO}/.config/hypr > /dev/null
mklink ${MYHOME}/.config/nvim/lua ${GIT_REPO}/.config/nvim/lua > /dev/null
mklink ${MYHOME}/.config/ranger ${GIT_REPO}/.config/ranger > /dev/null
mklink ${MYHOME}/.config/tofi ${GIT_REPO}/.config/tofi > /dev/null
mklink ${MYHOME}/.mysh ${GIT_REPO}/.mysh > /dev/null
mklink ${MYHOME}/.renpy ${GIT_REPO}/.renpy > /dev/null
mklink ${MYHOME}/Applications/Games/AliceInCradle/AliceInCradle_Data ${GIT_REPO}/Applications/Games/AliceInCradle/AliceInCradle_Data > /dev/null
mklink ${MYHOME}/Applications/Games/Butter/sakuranotoki/savedata_cn ${GIT_REPO}/Applications/Games/Butter/sakuranotoki/savedata_cn > /dev/null
mklink "${MYHOME}/Applications/Games/Touhou Project/official games/th06/replay" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th06/replay" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th06/score.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th06/score.dat" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th06/scorec.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th06/scorec.dat" > /dev/null
mklink "${MYHOME}/Applications/Games/Touhou Project/official games/th07/replay" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th07/replay" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th07/score.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th07/score.dat" > /dev/null
mklink "${MYHOME}/Applications/Games/Touhou Project/official games/th08/replay" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th08/replay" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th08/score.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th08/score.dat" > /dev/null
mklink "${MYHOME}/Applications/Games/Touhou Project/official games/th09/replay" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th09/replay" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th09/score.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th09/score.dat" > /dev/null
mklink "${MYHOME}/Applications/Games/Touhou Project/official games/th10/replay" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th10/replay" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th10/scoreth10.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th10/scoreth10.dat" > /dev/null
mklink "${MYHOME}/Applications/Games/Touhou Project/official games/th11/replay" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th11/replay" > /dev/null
# ln "${MYHOME}/Applications/Games/Touhou Project/official games/th10/scoreth11.dat" "${GIT_REPO}/Applications/Games/Touhou Project/official games/th10/scoreth11.dat" > /dev/null
mklink ${MYHOME}/backup/desktop_backup ${GIT_REPO}/backup/desktop_backup > /dev/null
# ln ${MYHOME}/.bashrc ${GIT_REPO}/.bashrc > /dev/null
# ln ${MYHOME}/.tmux.conf ${GIT_REPO}/.tmux.conf > /dev/null
# ln ${MYHOME}/.zshrc ${GIT_REPO}/.zshrc > /dev/null

cd ${GIT_REPO}
rm ${GIT_REPO}/pkglist.txt
cp ${BACKUP_DIR}/linux/pkglist.txt ${GIT_REPO}/pkglist.txt
git add .
git status -s
if [ "$(git status -s)" ];then
    git commit -m "Synced on $(date)"
    git push -q
    info "Github Repository Synced on $(date)."
else 
    info "GitHub repositories do not need to be synchronized."
fi
cd -
```
