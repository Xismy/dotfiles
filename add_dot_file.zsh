#!/usr/bin/env zsh
DOTFILES_CONF=$XDG_CONFIG_HOME/dotfiles/xdg_config_home

while [[ -n $1 ]]; do
	file=$(realpath --relative-to $XDG_CONFIG_HOME $1)
	dir=$(dirname $file)

	if [[ $file = ../* ]]; then
		echo "$1 is not under $XDG_CONFIG_HOME" 
		return 1
	elif [[ -L $1 ]]; then
		echo "$1 is a symbolic link"
		return 2
	fi

	mkdir -p $DOTFILES_CONF/$dir
	mv $1 $DOTFILES_CONF/$file
	ln -s $DOTFILES_CONF/$file $1
	shift
done
