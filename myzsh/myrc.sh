##Add My shell

# obtain TrackPoint ID from xinput list
StickDeviceID=$(xinput list | grep Stick | cut -f 2 | grep -Eo '[0-9]{1,}')

if [ -n "$StickDeviceID" ]; then
        # obtain properties from xinput list-props "$TP_ID"
        StickSpeedID=$(xinput list-props "$StickDeviceID" | grep 'libinput Accel Speed (' | cut -f 2 | grep -Eo '[0-9]{1,}')
        # set the speed you want [-1,1]
        xinput set-prop "$StickDeviceID" "$StickSpeedID" 1
	# Disable middle click paste.
	xinput set-button-map "$StickDeviceID" 1 0 3
fi

##-------------------------------------------------------------##
## Add My environment
## ADD FROM HERE

#MAKEFLAGS
export MAKEFLAGS=-j3

#Qt
export QTHOME=/home/SoftwareI/Qt
export MYPATH=$MYPATH:$QTHOME/Tools/QtCreator/bint
export MYPATH=$MYPATH:$QTHOME/5.12.0/gcc_64/bin
export QT_WEBKIT=true
export QT_QPA_PLATFORMTHEME="qt5ct"

#Latex
export TEXLIVEHOME=/home/SoftwareI/TexLive
export MYPATH=$MYPATH:$TEXLIVEHOME/bin/x86_64-linux
export MANPATH=$MANPATH:$TEXLIVEHOME/texmf-dist/doc/man
export INFOPATH=$INFOPATH:$TEXLIVEHOME/texmf-dist/doc/info

#WPS
#alias ppt='wpp'
#alias excel='et'
#alias word='wps'

#RISCV Tools
export RISCV=/home/SoftwareI/RISCV
export RISCV64=$RISCV/riscv64
export RISCV32=$RISCV/riscv32
export RISCV_GNU=$RISCV/riscv-gnu-toolchain
export RISCV_QEMU=$RISCV/riscv-qemu
export MYPATH=$MYPATH:$RISCV64/bin 
export MYPATH=$MYPATH:$RISCV32/bin
export MYPATH=$MYPATH:$RISCV_GNU/riscv64/bin
export MYPATH=$MYPATH:$RISCV_GNU/riscv32/bin
export MYPATH=$MYPATH:$RISCV_QEMU/bin
export RISCV=$RISCV64
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RISCV64/lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RISCV32/lib

# Verilator
export VERILATOR_ROOT=/home/SoftwareI/Verilator
export MYPATH=$MYPATH:$VERILATOR_ROOT/bin:$VERILATOR_ROOT/share/verilator/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$VERILATOR_ROOT/share/pkgconfig
export MANPATH=$MANPATH:$VERILATOR_ROOT/share/man
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$VERILATOR_ROOT/include

# MATLAB
export MATLABHOME=/home/SoftwareII/Matlab
export MYPATH=$MYPATH:$MATLABHOME/bin
#alias matlab_nodisplay='matlab -nosplash -nodesktop'
#alias matlab_run='matlab -nosplash -nodesktop -r'

#----------------Mentor----------------#
export MGC_HOME=/home/SoftwareI/Mentor

#----------------Synopsys----------------#
export SYNOPSYS_HOME=/home/SoftwareI/Synopsys
export SYNROOT=$SYNOPSYS_HOME
export SNPSLMD_LICENSE_FILE=27000@sun
export LM_LICENSE_FILE=$SYNOPSYS_HOME/Licenses/synopsys0.dat

#--------SCL--------#
export SCLBIN=$SYNOPSYS_HOME/SCL_v2018.06/amd64/bin
export MYPATH=$MYPATH:$SCLBIN
#alias snplmd='$SCLBIN/lmgrd -c $LM_LICENSE_FILE >> /home/sun/Documents/snplmd.log'

#--------Hspice--------#
export HSPICE_HOME=$SYNOPSYS_HOME/Hspice_v2017.03
export MYPATH=$MYPATH:$HSPICE_HOME/hspice/bin

#--------DC--------#
export DC_HOME=$SYNOPSYS_HOME/DC_v2016.03
export MYPATH=$MYPATH:$DC_HOME/bin

#--------VCS--------#
export VCS_ARCH_OVERRIDE=linux
export VCS_TARGET_ARCH=linux64
export VCS_HOME=$SYNOPSYS_HOME/VCS_v2017.03
export DVE_HOME=$VCS_HOME/gui/dve
export MYPATH=$MYPATH:$DVE_HOME/bin
export MYPATH=$MYPATH:$VCS_HOME/bin
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/$VCS_HOME/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/$VCS_HOME/include
# alias dve="dve -full64 &"

#--------Verdi3--------#
export VERDI_HOME=$SYNOPSYS_HOME/Verdi3_v2016.06
export NOVAS_HOME=$VERDI_HOME
export MYPATH=$MYPATH:$VERDI_HOME/bin

#--------ICC--------#
export ICC_HOME=$SYNOPSYS_HOME/ICC_v2016.03
export MYPATH=$MYPATH:$ICC_HOME/bin

#--------ICC2--------#
export ICC2_HOME=$SYNOPSYS_HOME/ICC2_v2016.12
export MYPATH=$MYPATH:$ICC2_HOME/bin

#--------LC--------#
export LC_HOME=$SYNOPSYS_HOME/LibraryCompiler_v2016.12
export MYPATH=$MYPATH:$LC_HOME/bin
export MYPATH=$MYPATH:$LC_HOME/admin/install/lc/bin

#--------Custom Explorer--------#
export CX_HOME=$SYNOPSYS_HOME/CustomExplorer_v2016.06
export MYPATH=$MYPATH:$CX_HOME/bin

#--------Formality--------#
export FM_HOME=$SYNOPSYS_HOME/Formality_v2016.03
export MYPATH=$MYPATH:$FM_HOME/bin

# --------PT--------#
export PT_HOME=$SYNOPSYS_HOME/PrimeTime_v2016.12
export MYPATH=$MYPATH:$PT_HOME/bin

# --------MW--------#
export MW_HOME=$SYNOPSYS_HOME/Mikyway_v2016.03
export MYPATH=$MYPATH:$MW_HOMW/bin/linux64

# ---------------Cadence---------------#
export CADHOME=/home/SoftwareI/Cadence
# IC617
# export CDS=$CADHOME/IC617
export CDS=$CADHOME/IC617.722
export CDSDIR=$CDS
export CDSHOME=$CDS
export CDSROOT=$CDS
export CDS_ROOT=$CDS
export CDS_INST_DIR=$CDS
export CADENCE_DIR=$CDS
# export LM_LIBRARY_PATH=$LM_LIBRARY_PATH:$CDSHOME/tools/lib:$CDSHOME/tools/lib64

export CDS_LOAD_ENV=CWD
export CDS_AUTO_64BIT=ALL
# export CDS_Netlisting_Mode=Analog

export CDS_LIC_FILE=$CADHOME/License/license.dat
export CDS_LIC_ONLY=1
export MYPATH=$MYPATH:$CDSDIR/tools/dfII/bin:$CDSDIR/tools/plot/bin

# MMSIM151
# export MMSIMHOME=$CADHOME/MMSIM151
# export MYPATH=$MYPATH:$MMSIMHOME/bin:$MMSIMHOME/tools:$MMSIMHOME/tools/relxpert/bin

# SPECTRUE171
export SPECTREHOME=$CADHOME/SPECTRE171
export MYPATH=$MYPATH:$SPECTREHOME/bin:$SPECTREHOME/tools/bin:$SPECTREHOME/tools/relxpert/bin

# ConFormal
export CONFRMLHOME=$CADHOME/CONFRML171
export MYPATH=$MYPATH:$CONFRMLHOME/bin:$CONFRMLHOME/tools.lnx86/bin:$CONFRMLHOME/tools.lnx86/dfII/bin

########VIVADO#######
export XILINXHOME=/home/SoftwareII/Xilinx
export VIVADOHOME=$XILINXHOME/Vivado/2018.2
export XILINXSDK=$XILINXHOME/SDK/2018.2
export VIVADOHLS=$XILINXHOME/Vivado_HLS/2018.2
export MYPATH=$MYPATH:$VIVADOHOME/bin
export MYPATH=$MYPATH:$XILINXSDK/bin
export MYPATH=$MYPATH:$VIVADOHLS/bin
export MYPATH=$MYPATH:$XILINXHOME/DocNav
export MYPATH=$MYPATH:$XILINXHOME/xic/bin
alias vivado='vivado -tempDir /home/sun/Documents/Xilinx -log /home/sun/Documents/Xilinx/vivado.log -journal /home/sun/Documents/Xilinx/vivado.jou'
export BROWSER=/usr/bin/x-www-browser
export HTML=/usr/bin/x-www-browser

######### IDEA #########
#export IDEA_HOME=/home/SoftwareI/Idea
#export IDEA_ROOT=$IDEA_HOME/idea-IU-182.5107.16
#export MYPATH=$MYPATH:$IDEA_ROOT/bin

########AndroidStudio##########
export ANDROIDSTUDIO_HOME=/home/SoftwareII/Android/AndroidStudio
export MYPATH=$MYPATH:$ANDROIDSTUDIO_HOME/bin
export ANDROID_SDK_HOME=/home/SoftwareII/Android/AndroidSDK
#alias android=$ANDROIDSTUDIO_HOME/bin/studio.sh

##ADD END HERE
##-------------------------------------------------------------##

#ADD MY PATH TO PATH
export PATH=$PATH:$MYPATH
#END
##-------------------------------------------------------------##