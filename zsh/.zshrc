# NVM setup must be done before plugins are bundled
export NVM_DIR=${HOME}/.config/nvm
export NVM_COMPLETION=true

# source zsh plugins
source ~/.zsh_plugins.sh

# cd and ls
cdls() {builtin cd "$@" && ls --color; }

# aliases
alias cd="cdls"
alias vim="nvim"
alias ls="ls --color -al"
alias cat="bat"

# source nix if it exits
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi


# starship - https://starship.rs/guide/#%F0%9F%9A%80-installation
eval "$(starship init zsh)"

