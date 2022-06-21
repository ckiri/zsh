# Created by newuser for 5.8

# Git integration
source ~/.config/git-prompt.sh

# Enable colors and change prompt:
autoload -U colors && colors
setopt PROMPT_SUBST
PROMPT='%4/%B%F{#ff00ff}$(__git_ps1 " (%s)")%f%b %(?.%B%F{#00ff00}>%f%b.%B%F{#ff0000}X%f%b) '

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
source ~/.config/vimode

# Variables

# Aliases
alias ls="ls --color=auto"
alias hhn="sudo openvpn --config ~/dl/hhn/config/hhn.ovpn --ca ~/dl/hhn/config/ca.cer"
alias xfce="startxfce4"
alias backup="sudo mount /dev/sdb1/ /mnt && sudo rsync -aAXv /home /mnt/backup/thinkpadx240/"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
