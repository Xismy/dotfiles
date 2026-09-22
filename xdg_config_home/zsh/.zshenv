export XDG_CONFIG_HOME=${${(%):-%N}:h:h}
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTSIZE=10000
export SAVEHIST=10000

export EDITOR='nvim'
export VISUAL='nvim'

export PATH=~/.local/bin:$PATH
