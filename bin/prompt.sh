source ~/bin/bash_colors.sh

get_git_branch() {
  echo `git rev-parse --abbrev-ref HEAD 2>/dev/null`
}

get_ruby_version() {
  echo `rbenv version-name`
}

set_prompt() {
  local path="\w"
  if [[ -d .git ]]; then
    local git_branch="[${RED}`get_git_branch`${RESET}]"
  fi
  local head="${BRIGHT_BLACK}\$${RESET}"

  PS1="${path}${git_branch}${head} "
}

PROMPT_COMMAND="set_prompt; ${PROMPT_COMMAND}"
