#!/bin/sh
set -eu

root=$(git rev-parse --show-toplevel)
[ -f "$root/.githooks/pre-push" ] || exit 1

git config --local core.hooksPath .githooks
git config --local --unset-all 'credential.https://github.com.helper' 2>/dev/null || :
git config --local --unset-all credential.helper 2>/dev/null || :
git config --local --add credential.helper ''
git config --local --add credential.helper '!"$(git rev-parse --show-toplevel)/.githooks/credential-pushnoi"'
git remote set-url origin https://pushnoi@github.com/pushnoi/support-fins.git
git config --local user.name pushnoi
git config --local user.email 24533455+pushnoi@users.noreply.github.com
