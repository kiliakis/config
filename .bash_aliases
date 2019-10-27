alias mount_ubuntu14="sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@137.138.152.44:/home/kiliakis ~/mountdirs/ubuntu14"
alias mount_gpgpusim="sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@188.184.87.94:/home/kiliakis ~/mountdirs/gpgpusimVM"
alias ssh_gpgpusim="ssh -Xt -J kiliakis@lxplus.cern.ch kiliakis@188.184.87.94"
#alias ssh_gpgpusim="ssh -X -i /home/kiliakis/.ssh/id_rsa kiliakis@188.184.87.94"
alias ssh_ubuntu14="ssh -Xt -J kiliakis@lxplus.cern.ch kiliakis@137.138.152.44"
alias phaethon="ssh -X -Y iliakis@phaethon.microlab.ntua.gr"
alias tlab-gpu="ssh -X -Y kiliakis@tlab-gpu-nv-03"
alias lxplus="ssh -X -Y kiliakis@lxplus.cern.ch"
alias hpcbatch="ssh -X -Y kiliakis@hpc-batch.cern.ch"
alias wints="xfreerdp --rfx -g 1915x1110 -u kiliakis cernts.cern.ch"
alias ssh_haswell="ssh -Xt -J kiliakis@lxplus.cern.ch kiliakis@olhswep19.cern.ch"
alias mount-cvmfs-projects="sudo mount -t cvmfs projects.cern.ch ~/mountdirs/test"
alias afsconnect="kdestroy && kinit -f -i"
alias cscope-generate='find . -type f -name "*.cc" -o -name "*.h"'
alias mount_hpcbatch='sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@hpc-batch.cern.ch: ~/mountdirs/hpcbatch/'
alias ssh_xydispc="ssh -X kiliakis@147.102.37.55"
alias ssh_xydisvm="ssh -X -p3022 kiliakis@147.102.37.55"
# alias mount_xydispc='sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@147.102.37.55: ~/mountdirs/xydispc/'
alias mount_xydisvm='sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa -p3022 kiliakis@147.102.37.55: ~/mountdirs/xydisvm/'

alias ssh_pcbe16467='ssh -X kiliakis@128.141.157.58'
alias ssh_leoforos='ssh -X kiliakis@leoforos.microlab.ntua.gr'
alias ssh_leoforosvm='ssh -X -p3022 kiliakis@leoforos.microlab.ntua.gr'
# alias mount_leoforosvm='sshfs -o IdentityFile=$HOME/.ssh/id_rsa -p3022 kiliakis@leoforos.microlab.ntua.gr: ~/mountdirs/leoforosvm/'
alias mount_leoforos='sshfs -o IdentityFile=$HOME/.ssh/id_rsa kiliakis@leoforos.microlab.ntua.gr: ~/mountdirs/leoforos/'

alias spotify='spotify --force-device-scale-factor=2'

alias ntuavpn='sudo openvpn ~/Documents/ntua.ovpn'

alias conkyrestart='pkill -HUP conky'
