TZ="Europe/London"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="simple"

# Editor
export EDITOR='code'

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git zsh-nvm npm tig web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# put things in ~/.bin into my $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# execute locally installed npm modules
export PATH="./node_modules/.bin:$PATH"

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Aliases

# Yarn
alias yarn-linked="( ls -l node_modules ; ls -l node_modules/@kano/* ) | grep ^l"

# Web Server
alias local-server="python -m SimpleHTTPServer"

# Virtual Hosts
alias vhosts="subl /usr/local/etc/httpd/extra/httpd-vhosts.conf"

# Apache
alias aprestart="sudo apachectl -k restart"
alias apstart="sudo apachectl start"
alias apstop="sudo apachectl stop"

# MySQL
alias dbstart="mysql.server start"
alias dbstop="mysql.server stop"

export PATH="/usr/local/sbin:$PATH"

# Github token for Kano installs
export GITHUB_TOKEN="831b1f22d59e5423f2c2cf2916a6e8751404518c"
