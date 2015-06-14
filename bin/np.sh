# npm publish with goodies, by Sindre Sorhus
# prerequisite: `npm install -g trash`
# `np` with an optional argument `patch`/`minor`/`major`/`<version>`
# defaults to `patch`
np() {
  trash node_modules &>/dev/null;
  git pull --rebase origin master &&
  npm install &&
  npm test &&
  npm version ${1:-patch} &&
  npm publish &&
  git push --follow-tags origin master
}
