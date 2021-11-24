export EDITOR=vim
PROMPT="[%F{red}%n%f%F{purple}@%f%F{yellow}%m%f] %2~ %# " RPROMPT="%T"
export PROMPT 
export RPROMPT

export SDKROOT=$(xcrun --show-sdk-path)

setopt interactivecomments
setopt autocd

alias v="vim"
alias ls="ls -G" 
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # create a TREE command
alias vim="~/vim/bin/vim"
alias todo="vim ~/todo.md"

export PATH="$PATH:/Users/joao/depot_tools/"
prefix=/Users/joao/clisp/x86_46-apple-darwin17.7.0/prequisites
alias ctags="`brew --prefix`/bin/ctags"
alias love="open -n -a love"
