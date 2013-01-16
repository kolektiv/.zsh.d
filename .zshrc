function setup_cygwin() {
	SHELL="$(cygpath -m $(which zsh))"; export SHELL
}

function setup_osx() {
	ROOTPATH="/Users/andrew/"; export ROOTPATH
}

if [[ $OSTYPE == "cygwin" ]]; then
	setup_cygwin
elif [[ $OSTYPE == "darwin12.2.1" ]]; then
	setup_osx
fi

zsh_conf_path="$ROOTPATH/.zsh.d/conf"

# Load conf files

zsh_conf_files=(paths history options autoload styles ls title git prompt ssh aliases scripts)

for file in $zsh_conf_files; {
    if [ -f $zsh_conf_path/$file ]; then
	source $zsh_conf_path/$file
    else
	echo "Couldn't load file $zsh_conf_path/$file - file not found"
    fi
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
