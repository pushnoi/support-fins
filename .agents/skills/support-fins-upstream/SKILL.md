---
name: support-fins-upstream
description: Check this Support Fins fork for new commits from gittrahan/support-fins; when explicitly asked, merge those updates while preserving local work. Use at the start of work in this repository or when invoked as $support-fins-upstream.
---

# Support Fins upstream

Use only in this repository. The intended remotes are `origin` =
`pushnoi/support-fins` and `upstream` = `gittrahan/support-fins`.

## Check (default, including automatic start-of-task use)

1. Confirm the repository root, current branch, `git status --short`, and the
   URLs of both remotes. If a remote points elsewhere, stop before fetching
   and report the mismatch.
2. Run `git fetch upstream --prune`. This updates remote-tracking refs only;
   it does not alter the checkout. If the network is unavailable, report that
   the check could not be completed and continue the user's independent work.
3. Compare `HEAD` and `upstream/main` with
   `git rev-list --left-right --count HEAD...upstream/main`, and show the new
   upstream commits with `git log --oneline HEAD..upstream/main`. Mention the
   current branch and whether local work is uncommitted. If this is a feature
   branch, make clear that the comparison is against that branch.
4. Report the result briefly and continue the original task. Do not merge,
   rebase, push, or create a commit merely because the check found updates.

## Sync (only when the user asks to incorporate upstream)

1. Run the check first unless it was already done in this task. Establish
   which branch should receive the update; use `main` for the fork's base
   unless the user names another branch. Preserve any uncommitted changes.
   If they prevent a safe merge, finish the independent work and explain the
   needed choice instead of resetting or silently stashing them.
2. Inspect the incoming commits and merge `upstream/main` into the target
   branch. Use a merge commit when histories have diverged so the user's
   commits stay intact. Resolve conflicts according to the user's current
   requirements and existing behavior; surface conflicts that require a
   product decision.
3. Run the relevant tests (`deno test --allow-read tests/` for geometry and
   import changes). Report the merge result, conflicts resolved, test outcome,
   and whether the fork remote was updated. Push only when the user's request
   includes updating the GitHub fork.

Never use `git reset --hard`, `git clean`, a force push, or a destructive
checkout to synchronize this fork.
