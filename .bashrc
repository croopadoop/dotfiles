#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cc='claude'
alias z='zed'
PS1='\w '
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/.luarocks/bin:$PATH"

# Auto-Completion
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
export LANG=en_US.UTF-8
. "$HOME/.cargo/env"
