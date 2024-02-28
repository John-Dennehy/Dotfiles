# Locale settings
LC_CTYPE=en_GB.UTF-8
LC_ALL=en_GB.UTF-8

# NVM setup must be done before plugins are bundled
export NVM_DIR=${HOME}/.config/nvm
export NVM_COMPLETION=true
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# source zsh plugins
source ~/.zsh_plugins.sh

# aliases
alias vim="nvim"
alias ls="ls --color -al"
alias cat="bat"

# source nix if it exits
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi

# pnpm
export PNPM_HOME="/home/jd/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
