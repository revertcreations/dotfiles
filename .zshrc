# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="awesomepanda"

if [ "$TMUX" = "" ]; then tmux; fi
export TERM="xterm-256color"

plugins=(git)

source $ZSH/oh-my-zsh.sh
