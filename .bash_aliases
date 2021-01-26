#aris aliases
alias mount_aris="sshfs -o IdentityFile=/home/kiliakis/.ssh/aris_rsa kiliakis@login.aris.grnet.gr: ~/mountdirs/aris"
alias ssh_aris="ssh -X -Y -i  /home/kiliakis/.ssh/aris_rsa kiliakis@login.aris.grnet.gr"

alias mount_lxplus="sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@lxplus.cern.ch: ~/mountdirs/lxplus"

# CERN vms
alias ssh_ubuntu14="sshpass -f ~/.lxplus.pass ssh -X4t -J kiliakis@lxplus.cern.ch kiliakis@137.138.152.44"
#alias mount_ubuntu14="sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@137.138.152.44:/home/kiliakis ~/mountdirs/ubuntu14"

# alias mount_gpgpusim="sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@188.184.87.94:/home/kiliakis ~/mountdirs/gpgpusimVM"
alias ssh_gpgpusim="sshpass -f ~/.lxplus.pass ssh -X4t -J kiliakis@lxplus.cern.ch kiliakis@188.184.87.94"

alias lxplus="sshpass -f ~/.lxplus.pass ssh -4 -Y kiliakis@lxplus.cern.ch"

alias ssh_hpcbatch="sshpass -f ~/.lxplus.pass ssh -X4t -J kiliakis@lxplus.cern.ch kiliakis@hpc-batch.cern.ch"
# alias mount_hpcbatch='sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@hpc-batch.cern.ch: ~/mountdirs/hpcbatch/'

alias ssh_haswell="sshpass -f ~/.lxplus.pass ssh -X4t -J kiliakis@lxplus.cern.ch kiliakis@olhswep19.cern.ch"
alias wints="xfreerdp --rfx -g 1915x1110 -u kiliakis cernts.cern.ch"
alias ssh_pcbe16467='sshpass -f ~/.lxplus.pass ssh -X4t -J kiliakis@lxplus.cern.ch kiliakis@128.141.157.58'
# alias mount_pcbe16467='sshpass -f ~/.lxplus.pass ssh -Xt -J kiliakis@lxplus.cern.ch kiliakis@128.141.157.58'

# NTUA vms
alias phaethon="ssh -X -Y iliakis@phaethon.microlab.ntua.gr"
alias ssh_xydispc="ssh -X kiliakis@147.102.37.55"
alias ssh_xydisvm="ssh -X -p3022 kiliakis@147.102.37.55"
alias mount_xydisvm='sshfs -o IdentityFile=/home/kiliakis/.ssh/id_rsa -p3022 kiliakis@147.102.37.55: ~/mountdirs/xydisvm/'

alias ssh_leoforos='ssh -X kiliakis@leoforos.microlab.ntua.gr'
alias ssh_leoforosvm='ssh -Xt -J kiliakis@leoforos.microlab.ntua.gr kiliakis@192.168.56.101'
alias mount_leoforos='sshfs -o IdentityFile=$HOME/.ssh/id_rsa kiliakis@leoforos.microlab.ntua.gr: ~/mountdirs/leoforos/'
alias ssh_mlabpc='ssh -X kiliakis@147.102.37.138'
alias mount_mlabpc='sshfs -o IdentityFile=$HOME/.ssh/id_rsa kiliakis@147.102.37.138: ~/mountdirs/mlabpc/'

alias ssh_liono="ssh -X kiliakis@liono.microlab.ntua.gr"
alias mount_liono="sshfs -o IdentityFile=$HOME/.ssh/id_rsa kiliakis@liono.microlab.ntua.gr: ~/mountdirs/liono"

# Local vms
alias start_local16="vboxmanage startvm ubuntu16 --type headless"
alias stop_local16="vboxmanage controlvm ubuntu16 poweroff soft"
alias mount_local16="sshfs -p 2522 -o IdentityFile=/home/kiliakis/.ssh/id_rsa kiliakis@localhost:/home/kiliakis ~/mountdirs/local16"
alias ssh_local16="ssh -Xt -p 2522 kiliakis@localhost"


# Evolve
#alias ssh_evolve="ssh -Xt -J kiliakis@liono.microlab.ntua.gr iliakisk@92.43.249.197"
alias ssh_evolve="ssh -Xt iliakisk@92.43.249.197"
alias mount_evolve='sshfs -o IdentityFile=$HOME/.ssh/id_rsa iliakisk@92.43.249.197: ~/mountdirs/evolve/'

# Ohter aliases
alias cscope-generate='find . -type f -name "*.cc" -o -name "*.h"'
alias spotify='spotify --force-device-scale-factor=2'
alias ntuavpn='sudo openvpn ~/Documents/ntua.ovpn'
alias mlabvpn='sudo openvpn ~/Documents/mlabpc.ovpn'
alias conkyrestart='pkill -HUP conky'
