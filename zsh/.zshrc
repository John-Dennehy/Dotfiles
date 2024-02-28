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

# starship - https://starship.rs/guide/#%F0%9F%9A%80-installation
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/home/jd/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
