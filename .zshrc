# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add custom plugins
plugins=(git zsh-autosuggestions)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set the PATH for Powerlevel10k
export PATH=$HOME/powerlevel10k:$PATH
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# Alias for Neovim
alias vim=nvim

# Source Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load NVM bash_completion

# Cargo (Rust) Configuration
export PATH="$HOME/.cargo/bin:$PATH"
