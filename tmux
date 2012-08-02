# http://robots.thoughtbot.com/post/2641409235/a-tmux-crash-course

# remap prefix to Control + a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# force a reload of the config file
unbind r
bind r source-file ~/.tmux.conf

# Quick horizontal/vertial splits
bind \ split-window -h
bind - split-window -v

# vim-esque navigation
bind-key k select-pane -U
bind-key j select-pane -D
bind-key h select-pane -L
bind-key l select-pane -R

# start numbering at 1
set -g base-index 1
