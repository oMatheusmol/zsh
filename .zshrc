# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add custom plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

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

export FUNCNEST=200
# Excalidraw
alias draw="npm --prefix ~/.excalidraw start"
alias bat="batcat"
alias find="fzf"
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"
alias cd="z"
alias zz="cd -"
fpath+=/home/matheus/.oh-my-zsh/custom/plugins/zsh-completions/src/

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
