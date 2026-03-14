alias virt='source virtenv/bin/activate'
alias virtpy='virtenv/bin/python'
alias split='tmux new-session -s DevSplit \; split-window -h \; send-keys -t 1 "vim" Enter \; send-keys -t 0 "clear ; echo "--- -     Split - Pyproj - Virt - ---" ; echo ; ls ; echo" Enter'
split #Add to very end of file to start tmux on boot
