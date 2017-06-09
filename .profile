#!/bin/sh

export PATH="$HOME/bin:$PATH"

PS1='\[\033[3D\]λ\[\033[3C\033[00m\]'

export CC=clang
export CXX=clang

export CLASSPATH="/usr/share/ant-junit/lib/ant-junit.jar"

alias mutt="mutt -e 'source ~/.mutt/default'"
alias st="st -e bash --rcfile ~/.profile"

if ! tmux has-session
then
    tmux new-session -d -n "#"       "irssi"
    tmux new-window     -n "@"  -t 1 "mutt"
    tmux new-window     -n ">_" -t 2 "bash --rcfile ~/.profile"
    tmux new-window     -n "λ"  -t 3 "ghci"
    tmux select-window -t 2
fi

if tty -s && [ -z "$TMUX" ]
then
    clear
    exec tmux attach
fi

#source ~/.gpg-agent
