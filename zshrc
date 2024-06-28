# welcome 
echo -e "\nWelcome to the brand new \e[1;36mArch Linux\e[0;0m!\n"

# zsh set
setopt no_nomatch
autoload -Uz promptinit
promptinit

# zsh source
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# zsh history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=10000
setopt SHARE_HISTORY

# path
export PATH=$PATH:$HOME/.caogo/bin
export PATH=$PATH:$HOME/.cargo/env
export PATH=$PATH:$HOME/.mysh

# ranger
export RANGER_LOAD_DEFAULT_RC=FALSE

# zgenom
# zgenom autoupdate
source "${HOME}/.zgenom/zgenom.zsh"

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
    # zgenom load zsh-users/zsh-syntax-highlighting
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
alias e='exit'
alias rbt='sync; sync; sudo reboot'
alias std='sync; sync; sudo shutdown -h now'
alias scst='systemctl status'
#mount
alias mttk='sudo mount -t ntfs3 -o iocharset=utf8,umask=22,prealloc,uid=1000,gid=1000,nohidden,sys_immutable,discard,force UUID=5573E4E11CC02192 /mnt/ttk'
alias umttk='sudo umount /mnt/ttk'
#git
alias gad='git add .'
alias gst='git status -s'
alias gci='git commit -m'
alias gbr='git branch --all'
alias glg='git log --pretty=format:"%C(auto)%h%Creset - %C(green)%s%Creset%n    %C(bold cyan)@%Creset%C(bold blue)%an%Creset, %C(cyan)%ah%Creset%C(auto)%d%Creset" --graph --all'
#net
alias cn='iwctl station wlan0 scan'
alias cndk='iwctl station wlan0 connect dokee_MI'
alias proxy='export https_proxy=http://127.0.0.1:7890; export http_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7890'
alias unproxy='unset http_proxy https_proxy all_proxy'
proxy
#can 
alias ccnd='candump -t z -c -8 -x'
#make
alias m='make'
alias mj='make -j'
alias mc='make clean'
alias mf='make flash -j'
alias cm='compiledb -f make -j'
#other
alias rgr='ranger'
alias type='type -a'
alias clc='clear'
alias matlab='matlab -nodesktop -nosplash'

