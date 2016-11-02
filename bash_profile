for file in ~/bin/*.sh; do
  source "$file"
done

export EDITOR="vim"
export GEM_EDITOR="vim" # for ~/bin/dive.sh

# Disable Ctrl-s, so I can use surround.vim
stty -ixon

# github.com/mislav/coral
eval "$(~/.coral/libexec/coral init -)"

# List vertically
alias ls="ls -1"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# github.com/defunkt/hub
eval "$(hub alias -s)"

# github.com/sstephenson/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# Node
# export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/usr/local/share/npm/bin:$PATH"

# binstubs
export PATH="./.binstubs:$PATH"
export PATH="./bin:$PATH"

# PostgreSQL
export PGHOST=localhost

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Color folders and executables
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Cairo
export PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig"

# Atom's apm develop path
export ATOM_REPOS_HOME="$HOME/Code"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# Go
export GOPATH=$HOME
export PATH="$PATH:$GOPATH/bin"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/Code/work/prodeal360/bin:$PATH"
