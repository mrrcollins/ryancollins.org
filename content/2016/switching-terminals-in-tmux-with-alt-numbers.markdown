Title: Switching terminals in tmux with ALT-numbers
Author: mr.rcollins
Date: 2016-01-25 09:58
Slug: switching-terminals-in-tmux-with-alt-numbers
Category: Software
Tags: tmux

I'm a big tmux fan, switching from screen a few years ago. Lately, I've been working on ways to switch between terminals faster. Now I'm using the ALT (Option key actually) under OS X to switch between the different terminals. The switching starts with the backtick and goes across the upper row of the keyboard until the equal key for 12 terminals, and then continues on with the second row and the Q key up until the I key for terminal 20. It seems to be working pretty well, the biggest issue is that I can't jump to specific buffers in Weechat with ALT-BUFFER#, but that's not a big deal (I'm using ALT-J BUFFER# right now.) Here's the specific section of my .tmux.conf file:

```

# Use ALT-n keys to select pane
bind-key -n M-"`" select-window -t 0
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
bind-key -n M-0 select-window -t 10
bind-key -n M-- select-window -t 11
bind-key -n M-= select-window -t 12

bind-key -n M-q select-window -t 13
bind-key -n M-w select-window -t 14
bind-key -n M-e select-window -t 15
bind-key -n M-r select-window -t 16
bind-key -n M-t select-window -t 17
bind-key -n M-y select-window -t 18
bind-key -n M-u select-window -t 19
bind-key -n M-i select-window -t 20

```



