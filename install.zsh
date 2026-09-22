#!/usr/bin/env zsh

function create_link() {
	if [[ -f $2 ]]; then
		echo "$1 already exists, skipped."
	else
		ln -sv $1 $2
	fi
}

script_path=${${(%):-%N}:P:h}
xdg_config_home=${script_path:h}


cd $script_path/xdg_config_home
for f in ${(p)$(find -type f)}; do
	target=${xdg_config_home}/${f#./}
	mkdir -p ${target:h}
	if [[ -f $target ]]; then
		echo "$target already exists."
	else
		create_link ${f:P} $target
	fi
done

mkdir -p $HOME/.local/bin
create_link $script_path/add_dot_file.zsh $HOME/.local/bin/add_dot_file
create_link ${xdg_config_home}/zsh/.init ~/.zshenv
