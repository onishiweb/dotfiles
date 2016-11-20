TZ="Europe/London"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Set name of the theme to load.
ZSH_THEME="simple"

# Editor
export EDITOR='subl'

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git npm terminalapp tig web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# put things in ~/.bin into my $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# execute locally installed npm modules
export PATH="./node_modules/.bin:$PATH"
