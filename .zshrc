# Created by newuser for 5.0.2
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

autoload -Uz compinit; compinit
zstyle ':completion:*:default' menu select=2

setopt auto_cd
setopt auto_pushd
setopt print_eight_bit

##
autoload colors; colors
PROMPT="%n@%m:%{${fg[yellow]}%}%~%{${reset_color}%}%# "
setopt transient_rprompt
##

# gls
if [ -e /usr/local/bin/gls ]; then
	alias ls='gls --color=auto'
else
	alias ls='ls --color=auto'
fi

alias ll='ls -l'
alias la='ls -la'

# zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighti    ng/highlighters
if [ -e /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# zsh-history-substring-search
if [ -e /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
	source /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh

	# bind UP and DOWN arrow keys
	bindkey '^[[A' history-substring-search-up
	bindkey '^[[B' history-substring-search-down
fi

# zsh-completions
if [ -e /usr/local/share/zsh-completions ]; then
	fpath=(/usr/local/share/zsh-completions $fpath)
fi

# zsh-autosuggestions
if [ -e /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
