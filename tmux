# OSX clipboard fix
set-option -g default-command "reattach-to-user-namespace -l zsh"

# 256-color
set -g default-terminal "screen-256color"

# status bar
set -g status-interval 60 # Refresh every 60 seconds
set -g status-utf8 on # Turn on UTF8 support
set -g status-right "%a %d %b %R"
set -g status-fg white
set -g status-bg colour24

# window list colours
# defaults first:
setw -g window-status-fg white
setw -g window-status-bg default
setw -g window-status-attr dim
# then active window:
setw -g window-status-current-fg colour24
setw -g window-status-current-bg white
setw -g window-status-current-attr bright

# remap prefix to Control + a
set -g prefix C-a
# unbind Control + b -> the old prefix
unbind C-b
# Allow sending Ctrl-A to apps inside tmux by pressing it twice
bind C-a send-prefix 

# Change keypress delay
set -sg escape-time 1

# force a reload of the config file
unbind r
bind r source-file ~/.tmux.conf \; display "Config reloaded"

# Quick horizontal/vertial splits
bind | split-window -h
bind - split-window -v

# vim-esque navigation
setw -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# vim-style copy/paste
unbind p
bind p paste-buffer
bind -t vi-copy 'v' begin-selection
bind -t vi-copy 'y' copy-selection

# Pane resizing
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# start numbering at 1
set -g base-index 1
setw -g pane-base-index 1

# disable the mouse
setw -g mode-mouse off
