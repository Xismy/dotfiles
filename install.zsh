#!/usr/bin/env zsh

function create_link() {
	if [[ -f $2 ]]; then
		echo "$1 already exists, skipped."
	else
		ln -sv $1 $2
	fi
}

script_path=${${(%):-%N}:P:h}

mkdir -p $HOME/.local/bin
create_link $script_path/add_dot_file.zsh $HOME/.local/bin/add_dot_file
create_link $script_path/xdg_config_home/zsh/.zprofile ~/.zprofile

cd $script_path/xdg_config_home
for f in ${(p)$(find -type f)}; do
	target=${script_path:h}/${f#./}
	mkdir -p ${target:h}
	if [[ -f $target ]]; then
		echo "$target already exists."
	else
		create_link ${f:P} $target
	fi
done
