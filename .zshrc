#theme
ZSH_THEME="dogenpunk"

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
export ZSH=/Users/yamadajun/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git ruby osx bundler brew rails emoji-clock)
# User configuration

export PATH=$HOME/.nodebrew/current/bin:$PATH
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

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

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
