# History
HISTFILE="$XDG_STATE_HOME/zshhst"
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob

bindkey -e

# Completion
zstyle :compinstall filename '/home/nexsych/.zshrc'		#
autoload -Uz compinit
zstyle ':completion:*' menu select				#
zmodload zsh/complist						#
compinit -d $XDG_CACHE_HOME/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)					# Include hidden files.

# Alias
alias \
	ls="ls -vhN --color=auto --group-directories-first" \
	la="ls -A" \
        ll="ls -al" \
	cp="cp -i" \
	mv="mv -i" \
        rmm="rm -rf" \
	grep="grep --color=auto" \
	v="nvim" \
	dotfile="git --git-dir=$HOME/.dotfile/ --work-tree=$HOME"

# Prompt
PS1="%F{111}%~ %#%f "

function precmd () {
	echo -ne "\033]0;$(pwd | sed -e "s;^$HOME;~;")\a"
}
