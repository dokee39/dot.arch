# welcome 
echo -e "\nWelcome to \e[1;34mArch Linux\e[0;0m!\n"

# zsh set
setopt no_nomatch
autoload -Uz promptinit
promptinit

# zsh source
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# zsh history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=100000
setopt SHARE_HISTORY

# path
export PATH=$PATH:$HOME/.caogo/bin
export PATH=$PATH:$HOME/.cargo/env
export PATH=$PATH:$HOME/.mysh
export PATH=$PATH:$HOME/Apps/MATLAB/R2024a/bin
export PATH=$PATH:/usr/local/webots
export WEBOTS_HOME=/usr/local/webots
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$WEBOTS_HOME/lib/controller;

# default
export PAGER=less
export EDITOR=nvim
export VISUAL=nvim

# ranger
export RANGER_LOAD_DEFAULT_RC=FALSE

# build
export SCONSFLAGS="-j8"
export MAKEFLAGS="-j"

# zgenom
# zgenom autoupdate
source "${HOME}/.zgenom/zgenom.zsh"

# ai 
source "${HOME}/.api_keys"
export LLM_KEY=$OPENROUTER_KEY

# if the init scipt doesn't exist
if ! zgenom saved; then
    echo "Creating a zgenom save"

    # prezto options
    zgenom prezto editor key-bindings 'vi'
    zgenom prezto prompt theme 'sorin'

    # prezto and modules
    zgenom prezto
    zgenom prezto git
    zgenom prezto command-not-found
    zgenom prezto syntax-highlighting
    zgenom prezto history
    zgenom prezto history-substring-search
    zgenom prezto autosuggestions
    zgenom prezto archive
    zgenom prezto completion
    zgenom prezto pacman
    zgenom prezto prompt
    zgenom prezto python
    zgenom prezto screen
    zgenom prezto ssh
    zgenom prezto terminal
    # Load prezto tmux when tmux is installed
    if hash tmux &>/dev/null; then
        zgenom prezto tmux
    fi

    # plugins
    zgenom load zsh-users/zsh-syntax-highlighting
    # zgenom load zsh-users/zsh-completions
    zgenom load sobolevn/wakatime-zsh-plugin
    
    zgenom bin tj/git-extras

    # save all to init script
    zgenom save

    # Compile your zsh files
    zgenom compile "$HOME/.zshrc"
fi


# alias
#system
alias rbt='sync; sync; reboot'
alias std='sync; sync; shutdown -h now'
alias scst='systemctl status'
#mount
alias mntfs='sudo mount -t ntfs3 -o rw,relatime,fmask=0022,dmask=0022,uid=1000,gid=1000,iocharset=utf8,prealloc,force'
alias mwin='sudo mount -t ntfs3 -o rw,relatime,fmask=0022,dmask=0022,uid=1000,gid=1000,iocharset=utf8,prealloc,force UUID=1B30D5BB4D54485C /mnt/win'
#git
alias gad='git add .'
alias gst='git status -s'
alias gci='git commit -m'
alias gbr='git branch --all'
alias glg='git log --pretty=format:"%C(auto)%h%Creset - %C(green)%s%Creset%n    %C(bold cyan)@%Creset%C(bold blue)%an%Creset, %C(cyan)%ah%Creset%C(auto)%d%Creset" --graph --all'
#net
alias cn='iwctl station wlan0 scan'
alias cndk='iwctl station wlan0 connect dokee_MI'
alias cngk='iwctl station wlan0 connect gkdhajimi2-5G'
alias ip='ip -color=auto'
alias proxy='export https_proxy=http://127.0.0.1:7890; export http_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7890'
alias unproxy='unset http_proxy https_proxy all_proxy'
proxy
#can 
alias ccnd='candump -t z -c -8 -x'
#compile
alias m='make'
alias mj='make -j'
alias mc='make clean'
alias mf='make flash -j'
alias mr='make run'
alias bm='bear -- make -j'
alias xx='xmake && xmake run'
alias xc='xmake clean'
alias xr='xmake run'
#gdb
alias gdb='gdb -q'
alias cgdb='cgdb -d gdb -q'
#other
alias ls='eza --icons'
alias la='eza --icons --git -la'
alias lt='eza --icons --tree'
alias manc='LANG=zh_CN.UTF-8 man'
alias rgr='ranger'
alias type='type -a'
alias clc='clear'
alias matlab='matlab -nodesktop -nosplash'
alias cr='cd $(pwd -P)'
alias ls='ls --color'
alias jx='kill -9 $(pgrep noita)'
alias code='code --unity-launch --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --enable-wayland-ime --disable-gpu --disable-gpu-sandbox'


# pnpm
export PNPM_HOME="/home/dokee/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# If on TTY1, start Hyprland
if [[ "$(tty)" == "/dev/tty1" ]]; then
    exec Hyprland &>/dev/null
fi
