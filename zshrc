export EDITOR=vim
PROMPT="[%F{red}%n%f%F{purple}@%f%F{yellow}%m%f] %2~ %# " RPROMPT="%T"
export PROMPT
export RPROMPT

setopt interactivecomments
setopt autocd

case "$OSTYPE" in
  darwin*)  source "dotfiles/mac.zsh" ;;
  linux*)   source "dotfiles/linux.zsh" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac
# code taken from https://stackoverflow.com/questions/394230/how-to-detect-the-os-from-a-bash-script

test -f .local.zsh && source .local.zsh
