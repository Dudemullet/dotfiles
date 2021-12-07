source ~/antigen.zsh
export TERM="xterm-256color"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle z
antigen bundle web-search
antigen bundle paulirish/git-open
antigen theme romkatv/powerlevel10k

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir aws vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# Tell Antigen that you're done.
antigen apply

export EDITOR="vim"
export PATH=~/.bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/opt/python@3.9/libexec/bin:$PATH"
alias pip=pip3
alias json_escape="tr -d '[:space:]' | jq -Rs"
. /Users/pipegutierrez/dev/konfio/kli/kli/autocomplete.sh

. /opt/homebrew/opt/asdf/asdf.sh
