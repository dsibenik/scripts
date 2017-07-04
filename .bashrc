#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
export PS1="[\[\e[31m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]]: "
export PATH="${PATH}:/home/dsibenik/Desktop/"

#export GTK_CSD=0
#export LD_PRELOAD=<"full path" of your libgtk3-nocsd.so.0 file>

alias showinfolder='sudo vim /usr/share/applications/mimeinfo.cache'
alias toggle='/home/dsibenik/Scripts/toggle.sh'
alias matlab='/usr/local/MATLAB/MATLAB_Production_Server/R2015a/bin/matlab'
alias open='/home/dsibenik/Scripts/open.sh'
alias rm='rm -i'
alias cp='cp -i'
alias ls='ls -hl --group-directories-first --color=auto'
alias steam='~/scripts/steamlauncher.sh'
alias suspend='systemctl suspend'
alias kodi='~/scripts/kodi.sh'
alias mocp='mocp -m'
alias ss='scrot -s'

eval "$(dircolors /etc/DIR_COLORS)"
