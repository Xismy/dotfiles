export XDG_CONFIG_HOME=${${${(%):-%N}:A:h:h}%/dotfiles/xdg_config_home}
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export EDITOR='nvim'
export VISUAL='nvim'

export PATH=~/.local/bin:$PATH

mkdir -p "$ZDOTDIR"
mkdir -p "$XDG_DATA_HOME/zsh"
mkdir -p "$XDG_CACHE_HOME/zsh"
