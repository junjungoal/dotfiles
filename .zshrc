#theme
ZSH_THEME="dogenpunk"
DISABLE_AUTO_TITLE="true"
#python settings
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export PATH=/usr/local/bin:$PATH
export CONFIG_HOME=$HOME/.config
export PATH=/usr/local/share/python:$PATH
export LC_ALL=en_US.UTF-8
export AUTOFEATURE=true
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export CLICOLOR=true
export OPEN_CV="/usr/local/opt/opencv3/bin:$PATH"
export PATH=$HOME/.local/bin/:$PATH
 #Path to your oh-my-zsh installation.
export ZSH=/home/jun/.oh-my-zsh
ZSH_THEME="robbyrussell"
export BAZEL=$HOME/bin
# User configuration

#alias

## general settings
setopt auto_pushd
setopt prompt_subst

# use autocompletion
autoload -U compinit promptinit compinit
zstyle ':completion::complete:*' use-cache true
#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=1

# not distinguish upper-case and lower-case for completion
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
# Predictive completion
autoload predict-on
zle -N predict-on
zle -N predict-off
bindkey '^X^P' predict-on
bindkey '^O' predict-off
zstyle ':predict' verbose true
function history-all { history -E 1 }


source $ZSH/oh-my-zsh.sh
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

#tmux alias
alias opencv_make='cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_opencv_java=OFF -D WITH_IPP=OFF -D PYTHON_EXECUTABLE=/usr/bin/python3.4 ..'
export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2
export PATH=/usr/local/opt/openssl/bin:$PATH
export PATH="/usr/local/ghc-7.10.2/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON=`which python3`
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias julia=/usr/local/bin/julia

### GENERATED BY ROBBYRUSSELL
let base16colorspace=256
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
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
export PATH=$HOME/anaconda3/bin/:$PATH
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.1/lib64/
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
# export PATH=$PATH:/usr/local/cuda/bin
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64
# export CUDA_PATH=/usr/local/cuda-10.1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/jun/.mujoco/mujoco210/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia-418
export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOST}\007';$PROMPT_COMMAND"
precmd() { eval "$PROMPT_COMMAND" }

