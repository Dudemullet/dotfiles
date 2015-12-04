# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
DEFAULT_USER="Dudemullet"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx dudemullet z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR=vim
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:~/bin:$GRAILS_HOME:$GRAILS_HOME/bin
export PATH=$PATH:$CATALINA_HOME
export PATH=$PATH:~/.bin
export JAVA_HOME=$(/usr/libexec/java_home)
export NVM_DIR=~/.nvm
export ENV=local
export NODE_ENV=local
source $(brew --prefix nvm)/nvm.sh
export PATH=$PATH:$JAVA_HOME
export PATH=$PATH:/usr/local/opt/go/libexec/bin

alias lsl="ls -1"
alias svn_delete_untracked="svn status --no-ignore | grep '^\?' | sed 's/^\?     //'  | xargs rm -rf"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/lgutierrez/.gvm/bin/gvm-init.sh" ]] && source "/Users/lgutierrez/.gvm/bin/gvm-init.sh"
