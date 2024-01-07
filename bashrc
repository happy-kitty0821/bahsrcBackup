# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 


stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

export HISTSIZE=20000 
#export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export VISUAL=nano;
export EDITOR=nano;

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

# PS1 Customization
PS1="[\[\e[31m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\]] \W \$  " 

#Bash Completion

 if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi



# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest -gt 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
#if [[ $iatest -gt 0 ]]; then bind "set show-all-if-ambiguous On"; fi



neofetch | lolcat
fortune | cowsay | lolcat

