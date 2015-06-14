# npm publish with goodies, by Sindre Sorhus
# prerequisite: `npm install -g trash`
# `np` with an optional argument `patch`/`minor`/`major`/`<version>`
# defaults to `patch`
np() {
  trash node_modules &>/dev/null;
  git pull origin master --rebase &&
  npm install &&
  npm test &&
  npm version ${1:-patch} &&
  npm publish &&
  git push origin master --follow-tags
}
