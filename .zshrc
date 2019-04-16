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

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k
antigen theme powerlevel9k

# Theme config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir aws vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
# POWERLEVEL9K_VCS_SHORTEN_LENGTH=10
# POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=30
# POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_VCS_SHORTEN_DELIMITER=".."

# Tell Antigen that you're done.
antigen apply

export EDITOR="vim"


export PATH=~/.bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH

alias testorion='cd ~/dev/pltsci/packages/pltsci-orion-public-api && ~/dev/pltsci/pltsci-orion/vendor/bin/codecept run api'
alias testorionverbose='cd ~/dev/pltsci/packages/pltsci-orion-public-api && ~/dev/pltsci/pltsci-orion/vendor/bin/codecept run api -vvv'
alias rerake='cd ~/dev/pltsci/pltsci-orion-docker; rake destroy; rake up'
alias republishjs='cd ~/dev/pltsci/pltsci-orion-docker; ./bin/artisan vendor:publish --tag=pltsci-public --force;popd;'


echo -ne "\e]1;$PWD\a"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/luisgutierrez/dev/timtoplay/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/luisgutierrez/dev/timtoplay/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/luisgutierrez/dev/timtoplay/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/luisgutierrez/dev/timtoplay/node_modules/tabtab/.completions/sls.zsh
