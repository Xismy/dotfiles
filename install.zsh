#!/usr/bin/env zsh
if [[ ! -f $XDG_CONFIG_HOME/dotfiles/add_dot_file.zsh ]]; then
	echo "dotfiles must be in $XDG_CONFIG_HOME"
	return 1
fi

mkdir -p $HOME/.local/bin
ln -s $XDG_CONFIG_HOME/dotfiles/add_dot_file.zsh $HOME/.local/bin/add_dot_file
