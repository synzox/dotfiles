# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#DEFAULT_USER=synzox@WHITEHOLE

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump colored-man colorize git github pip profiles python screen svn terminator virtualenv vundle )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/local/texlive/2012/bin/x86_64-linux:/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:/opt/intel/composer_xe_2013.3.163/bin/intel64:/opt/intel/composer_xe_2013.3.163/mpirt/bin/intel64:/opt/intel/composer_xe_2013.3.163/bin/intel64:/opt/intel/composer_xe_2013.3.163/bin/intel64_mic:/opt/intel/composer_xe_2013.3.163/debugger/gui/intel64:/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:/usr/local/texlive/2012/bin/x86_64-linux:/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/synzox/Softwares/blender:/home/synzox/Softwares/Canopy:/home/synzox/Softwares/CodeBlocks:/opt/eclipse:/home/synzox/Softwares/gephi/bin:/opt/mendeleydesktop/bin:/opt/scitools/bin/linux64:/usr/local/xmind:/home/synzox/Workspace/Softwares/TRIQS_0.9/bin:/home/synzox/Softwares/google_appengine/goagent/local:/home/synzox/Softwares/blender:/home/synzox/Softwares/Canopy:/home/synzox/Softwares/CodeBlocks:/opt/eclipse:/home/synzox/Softwares/gephi/bin:/opt/mendeleydesktop/bin:/opt/scitools/bin/linux64:/usr/local/xmind

##blender
#PATH=$PATH:/home/synzox/Softwares/blender; export PATH

#canopy
PATH=$PATH:/home/synzox/Softwares/Canopy; export PATH

#clang
#PATH=/home/synzox/Softwares/llvm/bin:$PATH; export PATH
PATH=/home/synzox/Softwares/clang+llvm-3.3-amd64-Ubuntu-12.04.2/bin:$PATH; export PATH

#codeblocks
PATH=$PATH:/home/synzox/Softwares/CodeBlocks; export PATH
source /home/synzox/Softwares/CodeBlocks/codeblocks.sh

#Eclipse
PATH=$PATH:/home/synzox/Softwares/Eclipse; export PATH

#gephi
PATH=$PATH:/home/synzox/Softwares/gephi/bin; export PATH

#goagent
PATH=$PATH:/home/synzox/Softwares/goagent/local; export PATH

##Intel Parallel Studio XE
source /opt/intel/bin/compilervars.sh intel64
source /opt/intel/mkl/bin/mklvars.sh intel64
source /opt/intel/tbb/bin/tbbvars.sh intel64
source /opt/intel/ipp/bin/ippvars.sh intel64
PATH=/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:$PATH; export PATH
PATH=/opt/intel/composerxe/bin:$PATH; export PATH

#Mendeley Desktop
PATH=$PATH:/opt/mendeleydesktop/bin; export PATH

#MoinMoin
PATH=$PATH:/home/synzox/Softwares/moin-1.9.7; export PATH

#SciTools Understand
PATH=$PATH:/home/synzox/Softwares/understand/bin/linux64
export PATH
export STIHOME=/home/synzox/Softwares/understand/

#TexLive
PATH=/usr/local/texlive/2013/bin/x86_64-linux:$PATH; export PATH
MANPATH=/usr/local/texlive/2013/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2013/texmf-dist/doc/info:$INFOPATH; export INFOPATH

#TRIQS
PATH=/home/synzox/Softwares/TRIQS-1.0/bin:$PATH; export PATH
LIBRARY_PATH=/home/synzox/Softwares/TRIQS-1.0/bin:$LIBRARY_PATH; export LIBRARY_PATH
LD_LIBRARY_PATH=/home/synzox/Softwares/TRIQS-1.0/bin:$LD_LIBRARY_PATH; export LD_LIBRARY_PATH
#PATH=$PATH:/home/synzox/Softwares/TRIQS-0.9/bin; export PATH

#wxHexEditor
#PATH=$PATH:/home/synzox/Softwares/wxHexEditor; export PATH

#xmind
PATH=$PATH:/usr/local/xmind; export PATH


#powerline-shell
function powerline_precmd() {
  export PS1="$(~/Sources/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd

#source $HOME/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

#fasd
eval "$(fasd --init auto posix-alias zsh-hook zsh-ccomp zsh-wcomp)"
