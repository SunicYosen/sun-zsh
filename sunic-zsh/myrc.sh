## Add My shell

# ---------- obtain TrackPoint ID from xinput list ---------- # 
# StickDeviceID=$(xinput list | grep Stick | cut -f 2 | grep -Eo '[0-9]{1,}')

# if [ -n "$StickDeviceID" ]; then
        # obtain properties from xinput list-props "$TP_ID"
#        StickSpeedID=$(xinput list-props "$StickDeviceID" | grep 'libinput Accel Speed (' | cut -f 2 | grep -Eo '[0-9]{1,}')
        # set the speed you want [-1,1]
#        xinput set-prop "$StickDeviceID" "$StickSpeedID" 1
	# Disable middle click paste.
# 	xinput set-button-map "$StickDeviceID" 1 0 3
# fi

# fbterm
# if [[ "$TERM" = linux ]] && [[ "$(ps otty= $$)" =~ tty ]] && type fbterm &> /dev/null; then 
# 	fbterm
# fi 


## ------------------------------------------------------------ ## 
## -------------------- Add My environment -------------------- ##
## --------------------    ADD FROM HERE   -------------------- ##

export SOFTWARE_DIR=/home/Software

if [ ! -d "/home/SoftwareI" ]; then
        export SOFTWARE_DIR1=$SOFTWARE_DIR
else
        export SOFTWARE_DIR1=/home/SoftwareI
fi 

if [ ! -d "/home/SoftwareII" ]; then
        export SOFTWARE_DIR2=$SOFTWARE_DIR
else 
        export SOFTWARE_DIR2=/home/SoftwareII
fi

export LD_LIBRARY_PATH=/usr/lib
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

# -------------------- MAKEFLAGS -------------------- #
export MAKEFLAGS=-j3

# ---------- TensorFlow ---------- #
export CUDA_VISIBLE_DEVICE=-1

# ---------- Qt ----------#
# export QTHOME=$SOFTWARE_DIR1/qt
# export QTDIR=$QTHOME/5.15.2/gcc_64 
# export QT_WEBKIT=true
# export MYPATH=$MYPATH:$QTHOME/Tools/QtCreator/bin
# export MYPATH=$MYPATH:$QTDIR/bin
# export PKG_CONFIG_PATH=$QTDIR/lib/pkgconfig
# export QT_PLUGIN_PATH=$QTDIR/plugins/
# export LD_LIBRARY_PATH=$QTDIR/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=$QT_PLUGIN_PATH/platforms:$LD_LIBRARY_PATH
# export QT_SELECT=qt5.15.2
# export QT_STYLE_OVERRIDE=cleanlooks
# export QT_QPA_PLATFORMTHEME=gtk3
export QT_LOGGING_RULES='*=false'

# ---------- OPENCV ----------# 
export OPENCV_HOME=$SOFTWARE_DIR1/opencv
export PKG_CONFIG_PATH=$OPENCV_HOME/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OPENCV_HOME/lib

# ---------- Latex ---------- #
export TEXLIVEHOME=$SOFTWARE_DIR1/texlive
export MYPATH=$MYPATH:$TEXLIVEHOME/bin/x86_64-linux
export MANPATH=$MANPATH:$TEXLIVEHOME/texmf-dist/doc/man
export INFOPATH=$INFOPATH:$TEXLIVEHOME/texmf-dist/doc/info

# ---------- WPS ---------- #

# ---------- RISCV Tools ---------- #
export RISCV_TOOLS=$SOFTWARE_DIR1/riscv
export RISCV64=$RISCV_TOOLS/riscv64
export RISCV32=$RISCV_TOOLS/riscv32

# Change RISCV tools $RISCV32/$RISCV64
export RISCV=$RISCV32
export MYPATH=$MYPATH:$RISCV/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RISCV/lib

# Other Tools
# export RISCV_GNU=$RISCV_TOOLS/riscv-gnu-toolchain
# export RISCV_QEMU=$RISCV_TOOLS/riscv-qemu
# export MYPATH=$MYPATH:$RISCV_GNU/riscv64/bin
# export MYPATH=$MYPATH:$RISCV_GNU/riscv32/bin
# export MYPATH=$MYPATH:$RISCV_QEMU/bin

# ---------- Verilator ---------- # 
export VERILATOR_ROOT=$SOFTWARE_DIR1/verilator
export MYPATH=$MYPATH:$VERILATOR_ROOT/bin:$VERILATOR_ROOT/share/verilator/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$VERILATOR_ROOT/share/pkgconfig
export MANPATH=$MANPATH:$VERILATOR_ROOT/share/man
export CPLUS_INCLUDE_PATH=$VERILATOR_ROOT/share/verilator/include
export VERILATOR_INC_DIR=$CPLUS_INCLUDE_PATH

# ---------- MATLAB ---------- # 
export MATLABHOME=$SOFTWARE_DIR2/Matlab
export MYPATH=$MYPATH:$MATLABHOME/bin
alias matlab_nodisplay='matlab -nosplash -nodesktop'
alias matlab_run='matlab -nosplash -nodesktop -r'

# ---------- Mentor ---------- # 
export MGC_HOME=$SOFTWARE_DIR1/mentor
export MODELSIM_PATH=$MGC_HOME/modelsim_intel
export QUESTASIM_PATH=$MGC_HOME/questasim
export MYPATH=$MYPATH:$QUESTASIM_PATH/questasim/bin
# export MYPATH=$MYPATH:$MODELSIM_PATH/modelsim_ase/bin
export MGLS_LICENSE_FILE=$MGC_HOME/license/LICENSE

# ---------- UVM ---------- #
export UVM_HOME=$SOFTWARE_DIR1/uvm

# ---------- Synopsys ---------- # 
export SYNOPSYS_HOME=$SOFTWARE_DIR1/synopsys
export SYNROOT=$SYNOPSYS_HOME
export SNPSLMD_LICENSE_FILE=27000@sun
export LM_LICENSE_FILE=$SYNOPSYS_HOME/Licenses/synopsys.dat
# export FLEXLM_DIAGNOSTICS=10

# ---------- SCL ---------- # 
export SCLBIN=$SYNOPSYS_HOME/SCL_v2018.06/amd64/bin
export MYPATH=$MYPATH:$SCLBIN
alias snplmd='$SCLBIN/lmgrd -c $LM_LICENSE_FILE > /home/sun/Documents/snplmd.log'

# ---------- Hspice---------- # 
export HSPICE_HOME=$SYNOPSYS_HOME/Hspice_v2018.09
export MYPATH=$MYPATH:$HSPICE_HOME/hspice/bin

# ---------- DC ---------- # 
export DC_HOME=$SYNOPSYS_HOME/Synthesis_v2018.06
export MYPATH=$MYPATH:$DC_HOME/bin

# ---------- VCS ---------- # 
export VCS_ARCH_OVERRIDE=linux
export VCS_TARGET_ARCH=linux64
export VCS_HOME=$SYNOPSYS_HOME/VCS_v2018.09
export DVE_HOME=$VCS_HOME/gui/dve
export MYPATH=$MYPATH:$DVE_HOME/bin
export MYPATH=$MYPATH:$VCS_HOME/bin
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$VCS_HOME/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$VCS_HOME/include

# alias dve="dve -full64 &"

# ---------- Verdi3 ---------- # 
export VERDI_HOME=$SYNOPSYS_HOME/Verdi3_v2018.09
export NOVAS_HOME=$VERDI_HOME
export NOVAS_RC=$VERDI_HOME/etc/novas.rc
export NOVAS_GUICONF=$HOME/.novas.conf
export NOVAS_SWAP_ROOT_DIR=$HOME/Documents/verdiLog
export FSDB_DUMP_LOG=off
export MYPATH=$MYPATH:$VERDI_HOME/bin

# ---------- ICC ---------- # 
export ICC_HOME=$SYNOPSYS_HOME/ICC_v2018.06
export MYPATH=$MYPATH:$ICC_HOME/bin

# ---------- ICC2 ---------- # 
export ICC2_HOME=$SYNOPSYS_HOME/ICC2_v2018.06
export MYPATH=$MYPATH:$ICC2_HOME/bin

# ---------- LC ---------- # 
export LC_HOME=$SYNOPSYS_HOME/LibCompiler_v2018.06
export MYPATH=$MYPATH:$LC_HOME/bin
export MYPATH=$MYPATH:$LC_HOME/admin/install/lc/bin

# ---------- WaveView Explorer ---------- # 
export WV_HOME=$SYNOPSYS_HOME/WaveView_v2020.03
export MYPATH=$MYPATH:$WV_HOME/bin

# ---------- Formality ---------- # 
export FM_HOME=$SYNOPSYS_HOME/Formality_v2018.06
export MYPATH=$MYPATH:$FM_HOME/bin

# ---------- PT ---------- # 
export PT_HOME=$SYNOPSYS_HOME/PrimeTime_v2018.06
export MYPATH=$MYPATH:$PT_HOME/bin

# ---------- PP ---------- #
export PT_HOME=$SYNOPSYS_HOME/PrimePower_v2018.06
export MYPATH=$MYPATH:$PT_HOME/bin


# ---------- MW ---------- # 
export MW_HOME=$SYNOPSYS_HOME/Mikyway_v2016.03
export MYPATH=$MYPATH:$MW_HOMW/bin/linux64

# -------------------- Cadence --------------------# 
export CADHOME=$SOFTWARE_DIR1/cadence
# ---------- IC618 ----------#
export CDS=$CADHOME/IC618
export CDSDIR=$CDS
export CDSHOME=$CDS
export CDSROOT=$CDS
export CDS_ROOT=$CDS
export CDS_INST_DIR=$CDS
export CADENCE_DIR=$CDS
# export LM_LIBRARY_PATH=$LM_LIBRARY_PATH:$CDSHOME/tools/lib:$CDSHOME/tools/lib64
export W3264_NO_HOST_CHECK=1
export CDS_LOAD_ENV=CWD
export CDS_AUTO_64BIT=ALL
# export CDS_Netlisting_Mode=Analog

export CDS_LIC_FILE=$CADHOME/license/license.dat
export CDS_LIC_ONLY=1
export MYPATH=$MYPATH:$CDSDIR/bin:$CDSDIR/tools/dfII/bin:$CDSDIR/tools/plot/bin

# MMSIM151
# export MMSIMHOME=$CADHOME/MMSIM151
# export MYPATH=$MYPATH:$MMSIMHOME/bin:$MMSIMHOME/tools:$MMSIMHOME/tools/relxpert/bin

# SPECTRUE191
export SPECTREHOME=$CADHOME/SPECTRE191
export MYPATH=$MYPATH:$SPECTREHOME/bin:$SPECTREHOME/tools/bin:$SPECTREHOME/tools/relxpert/bin

# ConFormal
export CONFRMLHOME=$CADHOME/CONFRML171
export MYPATH=$MYPATH:$CONFRMLHOME/bin:$CONFRMLHOME/tools.lnx86/bin:$CONFRMLHOME/tools.lnx86/dfII/bin

## ## ## ## VIVADO## ## ## # 
export XILINXHOME=$SOFTWARE_DIR2/Xilinx
export VIVADOHOME=$XILINXHOME/Vivado/2020.2 
export XILINXVITIS=$XILINXHOME/Vitis/2020.2 
export XILINXHLS=$XILINXHOME/Vitis_HLS/2020.2 
export MYPATH=$MYPATH:$VIVADOHOME/bin
export MYPATH=$MYPATH:$XILINXVITIS/bin
export MYPATH=$MYPATH:$XILINXHLS/bin
export MYPATH=$MYPATH:$XILINXHOME/DocNav
export MYPATH=$MYPATH:$XILINXHOME/xic/bin
export BROWSER=/usr/bin/x-www-browser
export HTML=/usr/bin/x-www-browser
# source $VIVADOHOME/settings64.sh
# source $XILINXVITIS/settings64.sh 
# source $XILINXHLS/settings64.sh

# -------------------- IDEA -------------------- # 
# export IDEA_HOME=$SOFTWARE_DIR1/Idea
# export IDEA_ROOT=$IDEA_HOME/idea-IU-182.5107.16
# export MYPATH=$MYPATH:$IDEA_ROOT/bin

# -------------------- AndroidStudio -------------------- #
export ANDROID_HOME=$SOFTWARE_DIR2/android
export ANDROIDSTUDIO_HOME=$ANDROID_HOME/android-studio
export MYPATH=$MYPATH:$ANDROIDSTUDIO_HOME/bin
export ANDROID_SDK_HOME=$ANDROID_HOME/android-sdk
export ANDROID_HOME=$ANDROID_SDK_HOME
export MYPATH=$MYPATH:$ANDROID_SDK_HOME/ndk-bundle
# export MYPATH=$MYPATH:$ANDROID_SDK_HOME/platform-tools
alias android=$ANDROIDSTUDIO_HOME/bin/studio.sh

# -------------------- Gradle -------------------- #
export GRADLE_HOME=/opt/gradle
export MYPATH=$MYPATH:$GRADLE_HOME/bin

# -------------------- GEMS -------------------- #
# Install Ruby Gems to ~/.gems
export GEM_HOME="$HOME/.gems"
export JEKYLL_GITHUB_TOKEN=57517b00f172776b41d61b79ebd918fd9561eea1
export PATH="$HOME/.gems/bin:$PATH"

# -------------------- TVM -------------------- #
export TVM_HOME=/home/sun/File/TVM/projects/tvm
export PYTHONPATH=$PYTHONPATH:$TVM_HOME/python:$TVM_HOME/topi/python:$TVM_HOME/vta/python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TVM_HOME/build:$TVM_HOME/3rdparty/vta-hw/build
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$TVM_HOME/include:$TVM_HOME/3rdparty/dmlc-core/include:$TVM_HOME/3rdparty/vta-hw/include:$TVM_HOME/3rdparty/dlpack/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$TVM_HOME/include:$TVM_HOME/3rdparty/dmlc-core/include:$TVM_HOME/3rdparty/vta-hw/include:$TVM_HOME/3rdparty/dlpack/include

# PRIVOXY
# export https_proxy=http://127.0.0.1:1080
# export http_proxy=http://127.0.0.1:1080
# export ftp_proxy=http://127.0.0.1:1080
# export HTTP_PROXY=$http_proxy
# export HTTP_PROXY=$https_proxy
# export FTP_PROXY=$ftp_proxy

# -------------------- MyBin -------------------- #
export MYPATH=$MYPATH:$SOFTWARE_DIR1/bin
export MYPATH=$MYPATH:/home/sun/.local/bin
export TERM="xterm"

# INPUT METHOD
# export QT_IM_MODULE=xim
# export QT4_IM_MODULE=xim
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export QT5_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus

# END
## ---------------------------------------- ## 
# ---------- ADD MY PATH TO PATH ---------- #
export PATH=$PATH:$MYPATH
# source $SUNICZSH/tmprc.sh
source $SUNICZSH/dircolors.sh
## ---------------------------------------- ## 
