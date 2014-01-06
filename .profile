# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

##Intel Parallel Studio XE
#if [ -d "/opt/intel/composerxe/bin"]; then
    #PATH="/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:$PATH"
#fi0
#Intel Parallel Studio XE

#source /opt/intel/bin/compilervars.sh intel64
#source /opt/intel/vtune_amplifier_xe/amplxe-vars.sh
#source /opt/intel/inspector_xe/inspxe-vars.sh
#source /opt/intel/advisor_xe/advixe-vars.sh
#source /opt/intel/mkl/bin/mklvars.sh intel64
#source /opt/intel/tbb/bin/tbbvars.sh intel64
#source /opt/intel/ipp/bin/ippvars.sh intel64
#export LANGUAGE=C
#export LC_MESSAGES=C
#export LC_ALL=C

# Added by Canopy installer on 2013-04-22
# source /home/synzox/Enthought/Canopy_64bit/User/bin/activate


##blender
#PATH=$PATH:/home/synzox/Softwares/blender; export PATH

#canopy
PATH=$PATH:/home/synzox/Softwares/Canopy; export PATH

#codeblock
PATH=$PATH:/home/synzox/Softwares/CodeBlocks; export PATH
source /home/synzox/Softwares/CodeBlocks/codeblocks.sh

#Eclipse
PATH=$PATH:/home/synzox/Softwares/Eclipse; export PATH

#gephi
PATH=$PATH:/home/synzox/Softwares/gephi/bin; export PATH

#Mendeley Desktop
PATH=$PATH:/opt/mendeleydesktop/bin; export PATH

#SciTools Understand
PATH=$PATH:/home/synzox/Softwares/understand/bin/linux64
export PATH
export STIHOME=/home/synzox/Softwares/understand/

#TexLive
PATH=/usr/local/texlive/2013/bin/x86_64-linux:$PATH; export PATH
MANPATH=/usr/local/texlive/2013/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2013/texmf-dist/doc/info:$INFOPATH; export INFOPATH

#vim-live-latex-preview
PATH=$PATH:/home/synzox/.vim/bundle/vim-live-latex-preview/bin; export PATH

#xmind
PATH=$PATH:/usr/local/xmind; export PATH

#Intel Parallel Studio XE
source /opt/intel/bin/compilervars.sh intel64
source /opt/intel/mkl/bin/mklvars.sh intel64
source /opt/intel/tbb/bin/tbbvars.sh intel64
source /opt/intel/ipp/bin/ippvars.sh intel64
PATH=/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:$PATH; export PATH
PATH=/opt/intel/composerxe/bin:$PATH; export PATH

#export GXX_ROOT=/usr/lib/gcc/x86_64-linux-gnu/4.6/
