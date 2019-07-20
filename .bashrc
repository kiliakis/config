# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Enable tab completion
source $HOME/.git-completion.bash

# colors!
green="\[\e[0;32m\]"
green_bold="\[\e[1;32m\]"
blue="\[\e[0;34m\]"
blue_bold="\[\e[1;34m\]"
purple="\[\e[0;35m\]"
purple_bold="\[\e[1;35m\]"
reset="\[\e[0m\]"
cyan="\[\e[0;36m\]"
cyan_bold="\[\e[1;36m\]"
red="\[\e[0;31m\]"
red_bold="\[\e[1;31m\]"
grey="\[\e[0;37m\]"
grey_bold="\[\e[1;37m\]"
yellow_bold="\[\e[1;33m\]"
# Change command prompt
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
# export PS1="$purple\u$blue@\h$green\$(__git_ps1)$cyan \W $ $reset"
export PS1="\n$grey\t $blue\u $green\h $red\$(__git_ps1) $purple\w \n$green→$reset "

# export PS1="$purple\u$green\$(__git_ps1)$cyan \W $ $reset"
LS_COLORS=$LS_COLORS:'ex=0;35:' ; export LS_COLORS

# for kinit
export KRB5_CLIENT_KTNAME=$HOME/.kiliakis.keytab

alias mount_ubuntu14="sudo sshfs -o allow_other,IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@137.138.152.44:/home/kiliakis /mnt/ubuntu14"
alias mount_gpgpusim="sudo sshfs -o allow_other,IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@188.184.87.94:/home/kiliakis /mnt/gpgpusim"
alias ssh_gpgpusim="ssh -X -i /home/kiliakis/.ssh/id_rsa kiliakis@188.184.87.94"
alias ssh_ubuntu14="ssh -X -i /home/kiliakis/.ssh/id_rsa kiliakis@137.138.152.44"
alias phaethon="ssh -X -Y iliakis@phaethon.microlab.ntua.gr"
alias tlab-gpu="ssh -X -Y kiliakis@tlab-gpu-nv-03"
alias lxplus="ssh -X -Y kiliakis@lxplus.cern.ch"
alias hpcbatch="ssh -X -Y kiliakis@hpc-batch.cern.ch"
alias wints="xfreerdp --rfx -g 1915x1110 -u kiliakis cernts.cern.ch"
alias haswell="ssh -X -Y kiliakis@olhswep19.cern.ch"
alias mount-cvmfs-projects="sudo mount -t cvmfs projects.cern.ch /mnt/test"
alias afsconnect="kdestroy && kinit -f -i"
alias cscope-generate='find . -type f -name "*.cc" -o -name "*.h"'
alias mount_hpcbatch='sudo sshfs -o allow_other,IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@hpc-batch.cern.ch: /mnt/hpcbatch/'
alias ssh_xydispc="ssh -X kiliakis@147.102.37.55"
alias ssh_xydisvm="ssh -X -p3022 kiliakis@147.102.37.55"
alias mount_xydispc='sudo sshfs -o allow_other,IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@147.102.37.55: /mnt/xydispc/'
alias mount_xydisvm='sudo sshfs -o allow_other,IdentityFile=/home/kiliakis/.ssh/id_rsa -p3022 kiliakis@147.102.37.55: /mnt/xydisvm/'

alias ssh_pcbe16467='ssh -X kiliakis@128.141.157.58'
alias ssh_leoforos='ssh -X kiliakis@leoforos.microlab.ntua.gr'
alias ssh_leoforosvm='ssh -X -p3022 kiliakis@leoforos.microlab.ntua.gr'
alias mount_leoforosvm='sudo sshfs -o allow_other,IdentityFile=$HOME/.ssh/id_rsa -p3022 kiliakis@leoforos.microlab.ntua.gr: /mnt/leoforosvm/'


AFS_USER="/afs/cern.ch/user/k/kiliakis"
AFS_WORK="/afs/cern.ch/work/k/kiliakis"

export PYTHONPATH="$PYTHONPATH:$AFS_WORK/install/:$AFS_WORK/scripts/"
# added by Anaconda3 4.4.0 installer
export PATH="/home/kiliakis/install/anaconda3/bin:$PATH"
# export PATH="afs/cern.ch/work/b/blond/public/install/anaconda3/bin:$PATH"

# To favor qt5 instead of qt3
export PATH="/usr/lib64/qt5/bin:$PATH"

# Add paraprof and tau to $PATH
# export PATH="/home/kiliakis/install/tau-2.26.2p1/x86_64/bin/:$PATH"


# Add install bins to $PATH
export PATH="/home/kiliakis/install/bin:$PATH"
export PATH="$AFS_WORK/install/bin:$PATH"

# For latex
export PATH="/home/kiliakis/install/texlive/2017/bin/x86_64-linux/:$PATH"
export MANPATH="/home/kiliakis/install/texlive/2017/texmf-dist/doc/man/:$MANPATH"
export INFOPATH="/home/kiliakis/install/texlive/2017/texmf-dist/doc/info/:$INFOPATH"
export C_INCLUDE_PATH="$AFS_WORK/install/include/:/usr/include/libxml2"
export CPLUS_INCLUDE_PATH="$AFS_WORK/install/include/:/usr/include/libxml2"
export CXX_INCLUDE_PATH="$AFS_WORK/install/include/:/usr/include/libxml2"
export LD_LIBRARY_PATH="$AFS_WORK/install/lib/"
#source /afs/cern.ch/sw/lcg/contrib/gcc/5.3.0/x86_64-centos7/setup.sh
source /cvmfs/sft.cern.ch/lcg/contrib/gcc/5.3/x86_64-centos7/setup.sh

# added by Anaconda2 4.4.0 installer
# export PATH="/home/kiliakis/install/anaconda2/bin:$PATH"


# for CUDA
export PATH="$PATH:/usr/local/cuda/bin"
export CUDA_INSTALL_PATH="/home/kiliakis/install/cuda"

# for mpi
#export PATH="/usr/lib64/openmpi3/bin:$PATH"
#export LD_LIBRARY_PATH="/usr/lib64/openmpi3/lib/:$LD_LIBRARY_PATH"

# for cool
export PATH="$PATH:/home/kiliakis/git/cool-compiler/bin"

