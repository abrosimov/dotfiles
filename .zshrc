source $HOME/.zsh/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git

antigen theme agnoster
antigen apply

export PKG_CONFIG_PATH="/opt/protobuf/lib/pkgconfig:/opt/sdl2/lib/pkgconfig:/opt/sdl2_image/lib/pkgconfig:/opt/sdl2_ttf/lib/pkgconfig:/opt/sdl2_net/lib/pkgconfig:/opt/sdl2_mixer/lib/pkgconfig/:$PKG_CONFIG_PATH"

alias -g L='| less'
alias -g G='| grep'
alias -g H='| head'
alias -g T='| tail'
alias -g SU='|sort -u'
alias -g P='| patch -p1'
alias -g PD='| patch -p1 --dry-run'
alias -g WC='| wc -l'

alias grep="grep --color=always -n "
alias pull="git pull -p origin master"
alias push="git push origin"
alias co="git checkout"
alias cob="git checkout -b"
alias merge="git merge"
alias fetch="git fetch origin master:master"
alias br="git branch"
alias ci="git commit -m"
alias add="git add"
alias st="git status"
alias stash="git stash"
alias gd="git diff --color"
alias gdc="git diff --color --cached"
alias am="git commit --amend"
alias gmm="git fetch -pn origin master:master && git merge master"

# Notifier aliases
alias -g NSC='&& notify-send -u critical -t 7000'
alias -g NSN='&& notify-send -u normal'
alias -g NSL='&& notify-send -u low'

alias -g UPL='NSC "Upload completed"'

source $HOME/.zprofile

if ! ssh-add -l > /dev/null; then
    ssh-add $HOME/.ssh/id_ed25519
fi
