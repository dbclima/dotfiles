#!/bin/bash

fresh_start_tmux() {
	DIRETORIO=$(pwd)

	# Janela 1 - Editor
	tmux new-session -s $1 -d
	tmux rename-window -t $1:1 'editor'
	tmux send-keys -t $1:1 'nvim .' Enter

	# Janela 2 - Run
	tmux new-window -t $1
	tmux rename-window -t $1:2 'run'

	# Janela 3 - Terminal
	tmux new-window -t $1
	tmux rename-window -t $1:3 'terminal'
	tmux send-keys -t $1:3 'ls' Enter
	
	
	echo "${DIRETORIO}/.git"
	# Janela 4 - Lazygit
	if [[ -d "${DIRETORIO}/.git" ]] then
		tmux new-window -t $1
		tmux rename-window -t $1:4 'git'
		tmux send-keys -t $1:4 'lazygit' Enter
	fi

	tmux select-window -t $1:1
	tmux a -t $1
}

OK=0

if [[ $# -ne 1 ]] then
	echo "Specify the name of the session"
	echo "Example: $0 <session-name>"
	exit ${OK}
fi

SESSION_NAME=$1

length=${#SESSION_NAME}
TMUX_SESSION=$(tmux ls | grep "$1")

if [[ $1 == "${TMUX_SESSION:0:length}" ]]; then
	echo "Session \"$1\" already exists"
	read -p "Overwrite it? [Y/n]: " answer

	if [[ "$answer" =~ ^[yY] ]]; then
		tmux kill-session -t $1
		fresh_start_tmux $1


	elif [[ "$answer" =~ ^[nN] ]]; then
		tmux a -t $1
		exit ${OK}
	fi

fi

fresh_start_tmux $1


