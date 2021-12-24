# Git-Hooks-Tutorial

Hooks reside in `.git/hooks` of every git repository.

```
.git/hooks
├── applypatch-msg.sample
├── commit-msg.sample
├── fsmonitor-watchman.sample
├── post-update.sample
├── pre-applypatch.sample
├── pre-commit.sample
├── pre-merge-commit.sample
├── prepare-commit-msg.sample
├── pre-push.sample
├── pre-rebase.sample
├── pre-receive.sample
├── push-to-checkout.sample
└── update.sample
```
These represent most of the available hooks, but the `.sample` extension prevent them from
executing. By removing this ending or adding a script with the same name will enable said
hook.
