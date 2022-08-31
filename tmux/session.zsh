 #!/bin/sh

tmux new-session -s $1 -n nvim -d
tmux new-window -t $1 -n server

tmux send-keys -t $1:nvim "nvim" Enter

tmux select-window -t $1:server
tmux split-window -h

tmux select-window -t $1:nvim
tmux -u attach -t $1
