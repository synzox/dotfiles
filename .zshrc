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
plugins=(autojump colored-man colorize git github pip profiles python screen svn terminator tmux tmuxinator virtualenv vundle )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/local/texlive/2012/bin/x86_64-linux:/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:/opt/intel/composer_xe_2013.3.163/bin/intel64:/opt/intel/composer_xe_2013.3.163/mpirt/bin/intel64:/opt/intel/composer_xe_2013.3.163/bin/intel64:/opt/intel/composer_xe_2013.3.163/bin/intel64_mic:/opt/intel/composer_xe_2013.3.163/debugger/gui/intel64:/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:/usr/local/texlive/2012/bin/x86_64-linux:/opt/intel/composerxe/bin:/opt/intel/advisor_xe/bin64:/opt/intel/inspector_xe/bin64:/opt/intel/vtune_amplifier_xe/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/synzox/Softwares/blender:/home/synzox/Softwares/Canopy:/home/synzox/Softwares/CodeBlocks:/opt/eclipse:/home/synzox/Softwares/gephi/bin:/opt/mendeleydesktop/bin:/opt/scitools/bin/linux64:/usr/local/xmind:/home/synzox/Workspace/Softwares/TRIQS_0.9/bin:/home/synzox/Softwares/google_appengine/goagent/local:/home/synzox/Softwares/blender:/home/synzox/Softwares/Canopy:/home/synzox/Softwares/CodeBlocks:/opt/eclipse:/home/synzox/Softwares/gephi/bin:/opt/mendeleydesktop/bin:/opt/scitools/bin/linux64:/usr/local/xmind

export TERM=xterm-256color

LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'; export LS_COLORS
alias ls="ls --color"
alias make="colormake"
#scripts
PATH=$HOME/Workspace/scripts:$PATH; export PATH

##blender
#PATH=$PATH:/home/synzox/Softwares/blender; export PATH

#canopy
PATH=$PATH:/home/synzox/Canopy; export PATH

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
#PATH=$PATH:/home/synzox/Softwares/moin-1.9.7; export PATH

#ONScripter
PATH=$PATH:/home/synzox/Softwares/onscripter; export PATH

#OpenBlas
LD_LIBRARY_PATH=/opt/OpenBLAS/lib:$LD_LIBRARY_PATH; export LD_LIBRARY_PATH

#SciTools Understand
PATH=$PATH:/home/synzox/Softwares/understand/bin/linux64; export PATH
export STIHOME=/home/synzox/Softwares/understand/

#Synkron
PATH=/home/synzox/Softwares/synkron:$PATH; export PATH

#TexLive
PATH=/usr/local/texlive/2013/bin/x86_64-linux:$PATH; export PATH
MANPATH=/usr/local/texlive/2013/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2013/texmf-dist/doc/info:$INFOPATH; export INFOPATH

#TRIQS
PATH=/home/synzox/Softwares/TRIQS/bin:$PATH; export PATH
LIBRARY_PATH=/home/synzox/Softwares/TRIQS/lib:$LIBRARY_PATH; export LIBRARY_PATH
LD_LIBRARY_PATH=/home/synzox/Softwares/TRIQS/lib:$LD_LIBRARY_PATH; export LD_LIBRARY_PATH

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

#powerline
#POWERLINE_COMMAND=$HOME/.vim/bundle/powerline/scripts/powerline; export POWERLINE_COMMAND
#source $HOME/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

#fasd
eval "$(fasd --init auto posix-alias zsh-hook zsh-ccomp zsh-wcomp)"

#tmux-powerline
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

#cw
#PATH=/usr/local/lib/cw:$PATH; export PATH
#PATH=~/.cw/def:$PATH; export PATH
