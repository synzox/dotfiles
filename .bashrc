##Intel Parallel Studio XE
source /opt/intel/bin/compilervars.sh intel64
source /opt/intel/mkl/bin/mklvars.sh intel64
source /opt/intel/tbb/bin/tbbvars.sh intel64
source /opt/intel/ipp/bin/ippvars.sh intel64

PATH=/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:$PATH; export PATH
PATH=/opt/intel/composerxe/bin:$PATH; export PATH

#export LANGUAGE=C
#export LC_MESSAGES=C
#export LC_ALL=C
#export GXX_ROOT=/usr/lib/gcc/x86_64-linux-gnu/4.6/

#TRIQS
#PATH=$PATH:/home/synzox/Workspace/Softwares/TRIQS/bin; export PATH
PATH=$PATH:/home/synzox/Softwares/TRIQS_0.9/bin; export PATH

#goagent
PATH=$PATH:/home/synzox/Softwares/google_appengine/goagent/local; export PATH

#bash历史命令
shopt -s histappend 
export PROMPT_COMMAND='history -a'

#powerline-shell
function _update_ps1() {
   export PS1="$(~/Sources/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}
export PROMPT_COMMAND="_update_ps1"

#gcc
#PATH=/home/synzox/Softwares/gcc/bin:/home/synzox/Softwares/gcc/libexec:$PATH; export PATH
#LIBRARY_PATH=/home/synzox/Softwares/gcc/lib:/home/synzox/Softwares/gcc/lib32:/home/synzox/Softwares/gcc/lib64:$PATH; export LIBRARY_PATH
#LD_LIBRARY_PATH=/home/synzox/Softwares/gcc/lib:/home/synzox/Softwares/gcc/lib32:/home/synzox/Softwares/gcc/lib64:$PATH; export LD_LIBRARY_PATH PATH
#C_INCLUDE_PATH=/home/synzox/Softwares/gcc/include:$PATH; export C_INCLUDE_PATH
#CPLUS_INCLUDE_PATH=/home/synzox/Softwares/gcc/include:$PATH; export CPLUS_INCLUDE_PATH
#MANPATH=/home/synzox/Softwares/gcc/share/man:$PATH; export MANPATH

#vi风格快捷键
#set -o vi
