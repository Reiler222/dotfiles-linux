export PATH="$PATH:/snap/bin/"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/snapd/desktop/applications"

#ALIAS
  #ALIAS VAGRANT
alias vaup="vagrant up"
alias vs="vagrant snapshot"  
alias vss="vagrant snapshot save"
alias vsr="vagrant snapshot restore"
alias vp="vagrant provision"

  #OTROS ALIAS
alias ll="lsd -la"
alias dircolors="gdircolors"
alias ls='lsd'
alias grep='grep --color=auto'
alias temp='pmset -g thermlog'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias zreset='source ~/.zshrc'
alias vi='vim'
alias vipien='cd ~/VPN && sudo openvpn aurraca_contractor@validas.das-nano.es.ovpn'
alias restartkde='killall plasmashell && kstart plasmashell'

# COLORES
export LS_COLORS="$(vivid generate snazzy)"

#------Autocompletion---------

source $HOME/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

#______________________
source $HOME/.zsh/fast-syntax-highlight/F-Sy-H.plugin.zsh
source $HOME/.zsh/completion.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
