

#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh#
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



#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTSIZE=100000

setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration


# tmux
#[ -n "$TMUX " ] && export TERM=screen-256color

. /etc/profile
. ~/z.sh

export PATH=$PATH:~/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:/data/mathematica/bin:$HOME/.cask/bin 

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
bindkey -v   # Default to standard vi bindings, regardless of editor string

# nnn file manager
# quitcd
export NNN_TMPFILE="/tmp/nnn"

n()
{

        nnn "$@"

        if [ -f $NNN_TMPFILE ]; then
                . $NNN_TMPFILE
                rm $NNN_TMPFILE
        fi
}

# nnn auto-completion
#compdef nnn
#
# Completion definition for nnn.
#
# Author:
#   Arun Prakash Jana <engineerarun@gmail.com>
#

setopt localoptions noshwordsplit noksharrays
local -a args
args=(
    '(-c)-c[specify dir color, disables if N>7]:color code'
    '(-e)-e[use exiftool instead of mediainfo]'
    '(-h)-h[show this help and exit]'
    '(-i)-i[start in navigate-as-you-type mode]'
    '(-l)-l[start in light mode (fewer details)]'
    '(-p)-p[specify custom nlay]:path to nlay'
    '(-S)-S[start in disk usage analyzer mode]'
    '(-v)-v[show program version and exit]'
    '*:filename:_files'
)
_arguments -S -s $args

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "$HOME/.cache/wal/colors.sh"
(~/bin/wal -r &)

# OPAM configuration
. /home/dagnachew/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
