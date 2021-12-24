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
- These represent most of the available hooks, but the `.sample` extension prevent them from
executing. By removing this ending or adding a script with the same name will enable said
hook.

- There shouldn't be any ending to these files, no `.sh` nor `.bash`!!!

- Hooks are mostly local to the repository, however may be applied server-side for
  example. To be able to have hooks used across a project would mean one would have to
  either use git `templates` or have the hooks version controlled and symlinked.
