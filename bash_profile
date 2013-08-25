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
eval "$(rbenv init -)"

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# Node
# export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/usr/local/share/npm/bin:$PATH"

# binstubs
export PATH="./bin:$PATH"

# PostgreSQL
export PGHOST=localhost

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
