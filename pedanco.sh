function start_pedanco() {
    gPedanco
    psql-start
    mongo-start
    redis-start
    rabbit-start
    
    tmux send-keys 'foreman start -p 5000'
    tmux send-keys 'Enter'
    tmux split-window
    tmux send-keys 'gWopr'
    tmux send-keys  'Enter'
    tmux send-keys 'foreman start -p 5001'
    tmux send-keys  'Enter'
    tmux select-layout 'tiled'
    tmux split-window -v elasticsearch
    tmux select-layout 'tiled'
    tmux split-window
    tmux send-keys 'zeus start'
    tmux send-keys 'Enter'
    tmux select-layout 'tiled'
    tmux split-window
    tmux send-keys 'rake elasticsearch:start'
    tmux send-keys 'Enter'
    tmux split-window
    tmux send-keys 'gWopr'
    tmux send-keys   'Enter'
    tmux send-keys 'worpengine'
    tmux send-keys   'Enter'
}

function stop_pedanco() {
    psql-stop
    mongo-stop
    redis-stop
    rabbit-stop
}