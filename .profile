#!/bin/sh

export PATH="$HOME/bin:$PATH"

#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(git rev-parse --abbrev-ref HEAD 2>/dev/null) \$\[\033[00m\] '
PS1='\[\033[3D\]λ\[\033[2C\033[00m\] '

export CC=clang
export CXX=clang

#export CLASSPATH="/usr/share/ant-junit/lib/ant-junit.jar"

alias mutt="mutt -e 'source ~/.mutt/default'"
alias st="st -e bash --rcfile ~/.profile"

if tty -s && [ -z "$TMUX" ]
then
    clear
    exec tmux attach
fi

#source ~/.gpg-agent
