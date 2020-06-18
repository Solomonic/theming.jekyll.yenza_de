# pre-commit.sh
STASH_NAME="pre-commit-$(date +%s)"
git stash save -q --keep-index $STASH_NAME

yaml-lint ../_data/

STASHES=$(git stash list)
if [[ $STASHES == "$STASH_NAME" ]]; then
  git stash pop -q
fi