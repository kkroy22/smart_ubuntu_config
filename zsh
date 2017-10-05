#.tmux.conf 

# set Zsh as your default Tmux shell
set-option -g default-shell /bin/zsh

# Tmux should be pretty, we need 256 color for that
set -g default-terminal "screen-256color"


# Tmux uses a 'control key', let's set it to 'Ctrl-a'
# Reason: 'Ctrl-a' is easier to reach than 'Ctrl-b'
set -g prefix C-a
unbind C-b

# Allow us to reload our Tmux configuration while
# using Tmux
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# Getting interesting now, we use the vertical and horizontal
# symbols to split the screen
bind | split-window -h
bind - split-window -v

# Set the numbering of windows to go from 1 instead
# of 0 - silly programmers :|
set-option -g base-index 1
setw -g pane-base-index 1


#vimrc
# give us 256 color schemes!
set term=screen-256color

# give us nice EOL (end of line) characters
#set list
#set listchars=tab:▸\ ,eol:¬


#tutor
# split the screen in half
Ctrl-a |

# jump over to the right hand split
Ctrl-a 

# split that right hand side pane in half
Ctrl-a -

# jump down to that lower pane
Ctrl-a 

# Close the window
Ctrl-d

# Open up another window
Ctrl-a c

# Go to the next window
Ctrl-a n

# disconnect from Tmux
Ctrl-a d

# Check what Tmux sessions are running
$ tmux ls

# Attach back into the session
$ tmux attach -t myfirsttmux

# Escape and kill session
Ctrl-a d
$ tmux kill-session -t myfirsttmux
