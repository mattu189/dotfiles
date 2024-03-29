export LANG=ja_JP.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

PROMPT='%F{green} %~
%F{magenta}⟩%f'

cdls(){
	\cd "$@" && ls -p --color
}
alias cd="cdls"

autoload -Uz colors
colors
autoload -Uz add-zsh-hook
autoload -U colors; colors
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

alias vi='vim'
alias l="ll"
alias df="df -h"
alias ls='ls -p  --color'
alias la='ls -a -p --color'
alias ll='ls -a -l -p --color'
alias ..='cd ..'
alias ...='cd ../../'
alias top="htop"

REPORTTIME=3

setopt correct
setopt auto_list
setopt auto_menu
setopt magic_equal_subst
setopt auto_param_keys

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin \
                             /usr/local/git/bin
zstyle ':completion:*' verbose yes 
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} r:|[._-]=*'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' recent-dirs-insert both
zstyle ':completion:*' completer _oldlist _complete _match _history _ignored _approximate _prefix _complete _ignored _expand _complete _correct
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' auto-description 'specify: %d' 
zstyle ':completion:*' menu select=long 
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31' 
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd' 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

HISTFILE=~/.zsh_history
HISTSIZE=10000

# 重複パスを登録しない
typeset -U path cdpath fpath manpath

# sudo用のpathを設定
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr,}/sbin(N-/))

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
