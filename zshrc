TZ="Europe/London"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Set name of the theme to load.
ZSH_THEME="simple"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm terminalapp tig)

source $ZSH/oh-my-zsh.sh

# User configuration

# put things in ~/.bin into my $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.bin:$PATH"

export EDITOR='subl'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# execute locally installed npm modules
export PATH="./node_modules/.bin:$PATH"
