#Nabil Mohammed
#Bashrc

#set vi mode with <Escape>
set -o vi

stty -ixon #disable ctrl-s terminal pause

#History Settings
shopt -s histappend #append bash commands to hist file
HISTSIZE=1000 #set bash history size to 1000
HISTFILESIZE=2000
HISTTIMEFORMAT='%m/%y | ' #add month and year before commands in hist file

#set prompt colors
#nabil(yellow)@(green)arch(blue)[currdirr(red)]
export PS1='\[\033[1;33m\]\u\[\033[1;32m\]@\[\033[1;34m\]arch\[\033[1;31m\][\W]\[\033[1;37m\]\$ \[\033[0;37m\]'

#aliases
alias sp='sudo pacman'
alias v='vim'
alias sv='sudo vim'
alias pd='pushd .'
alias dv='dirs -v'
alias geneious_prime='/home/nabil/.wine/drive_c/Program Files/Geneious Prime/Geneious Prime.exe'

#adding color to reg commands
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'

#add scripts to path
export PATH=${PATH}:/home/nabil/.scripts

#needed to fix matlab grey screen
export _JAVA_AWT_WM_NONREPARENTING=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nabil/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nabil/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nabil/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nabil/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

