HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
alias ls='eza --icons'
alias ll='eza -lah --icons'
alias cat='bat'
alias fastfetchcfg='fastfetch --config ~/.config/fastfetch/arch.jsonc'
alias clear='clear && fastfetchcfg'

if [[ $- == *i* ]]; then
  fastfetchcfg
fi

export PATH=$HOME/.local/bin:$PATH
