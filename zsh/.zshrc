source ~/.dotfiles/tools/antigen.zsh
autoload -U promptinit && promptinit
autoload -U compinit && compinit

antigen-use oh-my-zsh
antigen theme alanpeabody
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle colored-man

if [[ `uname` == 'Darwin' ]]
then
	export PATH=/usr/local/bin:$PATH
fi

export PATH=~/bin:$PATH
