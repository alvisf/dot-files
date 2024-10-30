# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugin Manager Initialization (Using Zinit for Speed)
if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
  mkdir -p ~/.zinit
  git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
source ~/.zinit/bin/zinit.zsh

# Load Oh My Zsh Library and Plugins via Zinit
ZSH="$HOME/.oh-my-zsh"

# Load essential Oh My Zsh components
zinit ice depth=1
# zinit light ohmyzsh/ohmyzsh

# Load Plugins
zinit ice wait lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting

# Load Powerlevel10k Theme
# zinit ice depth=1
zinit light romkatv/powerlevel10k

# Source Powerlevel10k configuration if it exists
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#
# # Lazy Load NVM (Node Version Manager)
# export NVM_DIR="$HOME/.nvm"
# NODE_VERSION=$(cat $NVM_DIR/alias/default)
# export PATH="$NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH"

# lazy_nvm() {
#   unset -f nvm node npm npx
#   if [ -s "$NVM_DIR/nvm.sh" ]; then
#     source "$NVM_DIR/nvm.sh"
#   else
#     echo "Error: nvm.sh not found at $NVM_DIR/nvm.sh"
#   fi
# }
# nvm() { lazy_nvm; nvm "$@"; }
# node() { lazy_nvm; node "$@"; }
# npm() { lazy_nvm; npm "$@"; }
# npx() { lazy_nvm; npx "$@"; }
#
# # Lazy Load rbenv (Ruby Version Manager)
# lazy_rbenv() {
#   unset -f rbenv
#   export PATH="$HOME/.rbenv/bin:$PATH"
#   eval "$(rbenv init -)"
# }
# rbenv() { lazy_rbenv; rbenv "$@"; }
#
# # Export Paths
# # export PATH="/usr/local/opt/sqlite/bin:$PATH"
# # export LDFLAGS="-L/usr/local/opt/sqlite/lib"
# # export CPPFLAGS="-I/usr/local/opt/sqlite/include"
# # export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
# # export PATH="/usr/local/opt/libxml2/bin:$PATH"
# # export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"
# # export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# # Aliases
alias letsgo="cd /Users/alvis/Code/data/nextpoint/NGE/documentloader"

# # Key Bindings
# bindkey -e
# bindkey '\e\e[C' forward-word
# bindkey '\e\e[D' backward-word
#
# # Enable Zsh Startup Profiling (Uncomment zmodload and zprof to profile)
# # zmodload zsh/zprof
# # zprof
# eval $(thefuck --alias)
