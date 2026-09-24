# Support Fins project instructions

At the start of each new Codex task in this repository, use the repository-local
`$support-fins-upstream` skill to check for new commits from
`gittrahan/support-fins` before changing project files. Run the check once per
task. Briefly report whether upstream is ahead; continue with the requested
work. A check alone does not authorize a merge.

When asked to integrate upstream, use the skill's sync workflow. Preserve the
user's commits and uncommitted changes; do not reset, force-push, or discard
them to make an update succeed.

For GitHub pushes, `origin` must be `pushnoi/support-fins` and authentication
must use the `pushnoi` GitHub account. Keep the repository-local credential
helper and `.githooks/pre-push` guard active; never switch the global `gh`
account to make a push work. Run `.githooks/setup.sh` once after a fresh clone
to install the local Git settings. Do not push to `upstream` or disable the
hook.

When work concerns deployment on the home server, use the local `loki`
skill to check the live server and its deployment source. For DNS, proxy or
TLS work, use the local `cloudflare-beheer` skill and verify the intended
hostname and Cloudflare zone first. Use UniFi only when the task actually
involves network routing or firewall configuration.
