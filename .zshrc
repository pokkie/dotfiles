

#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Customize to your needs...

export EDITOR="vim"
export KEYTIMEOUT=1
export TERM=xterm-256color
export BROWSER="firefox"



BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


HISTFILE=~/.zsh_history
SAVEHIST=50000
HISTSIZE=50000

setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration


# tmux
#[ -n "$TMUX " ] && export TERM=screen-256color

. /etc/profile
. ~/z.sh

# Import color scheme from 'wal'
export PATH=$PATH:~/bin:/data/packages/wal
#(~/bin/wal -r &)

# Git repo for dot management
alias config='/usr/bin/git --git-dir=/home/dagnachew/.cfg --work-tree=/home/dagnachew'


# bindkeys
# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a  
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "[B"      history-search-forward               # down arrow
bindkey "[A"      history-search-backward              # up arrow
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b
bindkey -e   # Default to standard emacs bindings, regardless of editor string

