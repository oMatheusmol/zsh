# -------------------------
# Powerlevel10k Configuration
# -------------------------

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -------------------------
# Oh-My-Zsh Configuration
# -------------------------

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add custom plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting history)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load zsh-completions plugin
fpath+=/home/matheus/.oh-my-zsh/custom/plugins/zsh-completions/src/

# -------------------------
# Powerlevel10k Theme
# -------------------------

# Set the PATH for Powerlevel10k
export PATH=$HOME/powerlevel10k:$PATH
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# -------------------------
# Alias Configurations
# -------------------------

# Alias for Neovim
alias vim=nvim

# Alias for batcat
alias bat="batcat"

# Alias for fzf
alias find="fzf"

# Alias for zoxide
alias cd="z"
alias zz="cd -"

# Source Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -------------------------
# NVM Configuration
# -------------------------

export NVM_DIR="$HOME/.nvm"

# Load NVM and its bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# -------------------------
# Cargo (Rust) Configuration
# -------------------------

export PATH="$HOME/.cargo/bin:$PATH"

# -------------------------
# Miscellaneous Configurations
# -------------------------

export FUNCNEST=200  # Set function nesting limit

# -------------------------
# Excalidraw
# -------------------------

alias draw="npm --prefix ~/.excalidraw start"

# -------------------------
# Fzf Configuration
# -------------------------

export PATH="$HOME/.local/bin:$PATH"

# Load FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# -------------------------
# Zoxide Configurations
# -------------------------

eval "$(zoxide init zsh)"
