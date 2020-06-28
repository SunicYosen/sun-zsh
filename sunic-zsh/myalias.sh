#! /bin/zsh
# SYSTEM
alias rebash='stty sane'
alias lo="gnome-session-quit"
alias xpdf=evince

# GTKWAVE
alias gtkwave="gtkwave --dark"

# WPS
alias ppt='wpp'
alias excel='et'
alias word='wps'

# Matlab
alias matlab_nodisplay='matlab -nosplash -nodesktop'
alias matlab_run='matlab -nosplash -nodesktop -r'

# SCL
alias snplmd='$SCLBIN/lmgrd -c $LM_LICENSE_FILE >> /home/sun/Documents/snplmd.log'

# VCS
alias verdil="verdi -logdir /home/sun/Documents/verdiLog"
alias dvel="dve -logdir /home/sun/Documents/DVEfiles"

# Candence IC
alias ic='virtuoso & exit'

# Andriod Studio
alias android=$ANDROIDSTUDIO_HOME/bin/studio.sh

# Vivado
alias vivado='vivado -tempDir /home/sun/Documents/Xilinx -log /home/sun/Documents/Xilinx/vivado.log -journal /home/sun/Documents/Xilinx/vivado.jou'

#apt-fast
# alias apt=apt

# Default Applications Command
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s rar='unrar x'
alias -s pdf='evince'
