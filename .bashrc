#
# ~/.bashrc
#

#if [ -n "$DISPLAY" ] || [ -n "$WAYLAND_DISPLAY" ]; then
 #   [[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach
#fi

# Only load Starship in graphical session, not in TTY
#if [ -n "$DISPLAY" ] || [ -n "$WAYLAND_DISPLAY" ]; then
 #   eval "$(starship init bash)"
  #  [[ ${BLE_VERSION-} ]] && ble-attach
#fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \w]\n\$ '
PS1='\[\e[1;32m\]\u@\h\[\e[0m\] › \[\e[1;36m\]\w\[\e[0m\]\n\$ '

export NVM_DIR="$HOME/.nvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/aqeel/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias pn=pnpm

export PATH="$HOME/.local/bin:$PATH"
