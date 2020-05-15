# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=~/.oh-my-zsh

# Load Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions  zsh-syntax-highlighting docker kubectl)

source $ZSH/oh-my-zsh.sh

# Aliases
source ~/.aliases

# Exports and paths
GOPATH=$HOME/go
export OPS_DIR="$HOME/.ops"
export PATH="$HOME/.ops/bin:$PATH"
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
export PYTHONDONTWRITEBYTECODE=True
export PYTHONPYCACHEPREFIX="$HOME/.cache/cpython"
#source /usr/local/bin/virtualenvwrapper.sh
export PATH=$HOME/bin:/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/sbin:$GOPATH/bin:$PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="$GOPATH/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# pyenv related env vars and initialization
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Export kubeconfigs
export KUBECONFIG=/Users/nicolaballotta/.kube/config:/Users/nicolaballotta/.kube/esxi.config

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
