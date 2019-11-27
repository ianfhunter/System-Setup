#!/bin/bash

set +e

SESSIONNAME="My_Work"

# Change these locations to your own defaults!
window_locations=(
    /home/ian/Code/HomeBank-BOI
    /home/ian/Code/HomeBank-AIB
    /home/ian/Code/HomeBank-Revolut
)

window_titles=(
    Bank of Ireland
    Allied Irish Bank
    Revolut
)
num_windows=${#window_locations[@]}

echo "Check for Session"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    echo "New Session"
    tmux new-session -s $SESSIONNAME -n Scratch -d

    for ((i=0; i<=$num_windows; i++))
    do
        echo "New Window"
        tmux new-window -d -c ${window_locations[i]}
        echo tmux new-window -d -c ${window_locations[i]}
        tmux next-window
        echo tmux next-window
        tmux rename-window ${window_titles[i]}
        echo tmux rename-window ${window_titles[i]}

    done
    tmux next-window
else
    echo "Session already exists."
fi

echo "Attach"

tmux attach -t $SESSIONNAME
