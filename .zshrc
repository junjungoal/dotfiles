#theme
ZSH_THEME="dogenpunk"
DISABLE_AUTO_TITLE="true"
#python settings
export GOPATH=$HOME/go
#export PATH=$PATH:$GOPATH/bin:$PATH
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export PATH=/usr/local/bin:$PATH
export CONFIG_HOME=$HOME/.config
export PATH=/usr/local/share/python:$PATH
export LC_ALL=en_US.UTF-8
export CABAL=~/.cabal/bin:$PATH
export ELASTICPATH=/usr/local/Cellar/elasticsearch/5.3.1/libexec/bin
export HASKELL=$HOME/Library/Haskell/bin:$HASKELL
export AUTOFEATURE=true
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export CLICOLOR=true
export OPEN_CV="/usr/local/opt/opencv3/bin:$PATH"
export CABAL_PATH=$PATH:~/.cabal/bin
 #Path to your oh-my-zsh installation.
export ZSH=/home/ubuntu/.oh-my-zsh
ZSH_THEME="robbyrussell"
export BAZEL=$HOME/bin
# User configuration

#alias
alias pandoc_ja="(){iconv -f UTF-8-MAC -t UTF-8  $1 | pandoc -f markdown -o  $2 -V documentclass=ltjarticle --latex-engine=lualatex}"
alias be="bundle exec"
alias be='bundle exec'
alias tm='projects/tech-master'
alias osm='open -a sublime\ text projects/tech-master'
alias rs='rails s'
alias rs4='rails s -p 4000'
alias rs5='rails s -p 5000'
alias rc='rails c'
alias bi='bundle install'
alias sbp='source .bash_profile'
alias sim='/projects/simulation'
alias osc='open -a sublime\ text projects/tech-camp'
alias penv='workon env1'
alias pend='deactivate'
alias ns='npm run start'
alias mys='mysql.server start'
alias workenv1='workon env1'
alias deact='deactivate'a
alias django s='python manage.py runserver'
alias killunicorn='kill `cat tmp/pids/unicorn.pid`'
alias launchunicorn='bundle exec unicorn -c /config/unicorn.conf -E production -D'
alias mvim="/Applications/MacVim.app/Contents/MacOS/mvim"
alias j="autojump"
export ELASTICPATH=/usr/local/Cellar/elasticsearch/2.1.1/libexec/bin/plugin
export PATH=$PATH:$ELASTICPATH

## general settings
setopt auto_pushd
setopt prompt_subst

#補完機能を使用する
autoload -U compinit promptinit compinit
zstyle ':completion::complete:*' use-cache true
#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=1

#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'



autoload -U compinit; compinit
setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types

setopt bang_hist

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#予測入力させる
autoload predict-on
zle -N predict-on
zle -N predict-off
bindkey '^X^P' predict-on
bindkey '^O' predict-off
zstyle ':predict' verbose true
function history-all { history -E 1 }


source $ZSH/oh-my-zsh.sh
export PATH="/opt/mongodb/bin:$PATH"
if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem
export CLICOLOR=1
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
#base16_ocean
let base16colorspace=256
#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/local/bin/virtualenvwrapper.sh
source /home/ubuntu/anaconda3/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs

title() { export TITLE_OVERRIDDEN=1; echo -en "\e]0;$*\a"}
# Turn off static titles ($ autotitle)
autotitle() { export TITLE_OVERRIDDEN=0 }; autotitle
# Condition checking if title is overridden
overridden() { [[ $TITLE_OVERRIDDEN == 1 ]]; }
# Echo asterisk if git state is dirty
gitDirty() { [[ $(git status 2> /dev/null | grep -o '\w\+' | tail -n1) != ("clean"|"") ]] && echo "*" }

# Show cwd when shell prompts for input.
tabtitle_precmd() {
   if overridden; then return; fi
   pwd=$(pwd) # Store full path as variable
   cwd=${pwd##*/} # Extract current working dir only
   print -Pn "\e]0;$cwd$(gitDirty)\a" # Replace with $pwd to show full path
}
[[ -z $precmd_functions ]] && precmd_functions=()
precmd_functions=($precmd_functions tabtitle_precmd)

# Prepend command (w/o arguments) to cwd while waiting for command to complete.
tabtitle_preexec() {
   if overridden; then return; fi
   printf "\033]0;%s\a" "${1%% *} | $cwd$(gitDirty)" # Omit construct from $1 to show args
}
[[ -z $preexec_functions ]] && preexec_functions=()
preexec_functions=($preexec_functions tabtitle_preexec)
export PATH=/usr/local/cuda/bin:/usr/local/bin:/opt/aws/bin:/home/ubuntu/src/cntk/bin:/usr/local/mpi/bin:$PATH
export LD_LIBRARY_PATH=/home/ubuntu/src/cntk/bindings/python/cntk/libs:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
export PYTHONPATH=/home/ubuntu/src/cntk/bindings/python
if [ -e /usr/lib/libmpi_cxx.so ]; then
  export LD_PRELOAD=/usr/lib/libmpi_cxx.so
fi
export PATH=/usr/local/cuda/bin:/usr/local/bin:/opt/aws/bin:/usr/local/mpi/bin:$PATH
export LD_LIBRARY_PATH_WITH_DEFAULT_CUDA=/usr/lib64/openmpi/lib/:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:/lib/:/lib/nccl/cuda-10.1/lib/:$LD_LIBRARY_PATH_WITH_DEFAULT_CUDA
export LD_LIBRARY_PATH_WITHOUT_CUDA=/usr/lib64/openmpi/lib/:/usr/local/lib:/usr/lib:/usr/local/mpi/lib:/lib/:$LD_LIBRARY_PATH_WITHOUT_CUDA
export LD_LIBRARY_PATH=/usr/lib64/openmpi/lib/:/usr/local/cuda/lib64:/usr/local/lib:/usr/lib:/usr/local/cuda/extras/CUPTI/lib64:/usr/local/mpi/lib:/lib/:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
export PATH=$HOME/anaconda3/bin/:$PATH
export LIBFM_PATH=/home/ubuntu/libfm/bin/
export LD_LIBRARY_PATH=$HOME/.mujoco/mjpro150/bin:$LD_LIBRARY_PATH
export PYTHONPATH=$HOME/projects/mfrl/examples/battle_model/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.1/lib64/
export LD_LIBRARY_PATH=/root/.mujoco/mujoco200/bin:$LD_LIBRARY_PATH
export PATH=$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=/usr/local/cuda/lib64
export CUDA_PATH=/usr/local/cuda-10.1
export MUJOCO_PY_MJPRO_PATH=~/.mujoco/mjpro131
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ubuntu/.mujoco/mjpro150/bin
