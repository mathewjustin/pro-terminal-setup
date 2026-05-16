# Launch Playbook

Use this after the README and Docker smoke test are green.

## Short Pitch

Turn a fresh macOS or Linux shell into a polished Kubernetes-ready terminal in minutes:
Ghostty, zsh, Starship, zoxide, fzf, eza, bat, fd, ripgrep, kubectl aliases,
k9s, and tmux.

## Install Snippet

```sh
brew install mathewjustin/pro-terminal/pro-terminal-setup
pro-terminal-setup install
terminal-intro
```

## Reddit Draft

Title:

```text
I packaged my portable Ghostty + Kubernetes terminal setup as a Homebrew formula
```

Body:

```text
I kept rebuilding the same terminal setup across machines, so I packaged it.

It installs a portable zsh layer with Starship, zoxide, fzf, eza, bat, fd,
ripgrep, kubectl aliases, k9s, and tmux. Ghostty config is included too, but
Ghostty itself stays a separate GUI install.

Install:

brew install mathewjustin/pro-terminal/pro-terminal-setup
pro-terminal-setup install
terminal-intro

Repo:
https://github.com/mathewjustin/pro-terminal-setup

It backs up managed files before replacing them and has a Docker smoke test.
Feedback welcome, especially from Kubernetes/devops folks.
```

Suggested subreddits:

- r/commandline
- r/devops
- r/kubernetes
- r/unixporn
- r/macapps

Read each subreddit rules before posting. Avoid posting the same text everywhere
on the same day.

## Hacker News Draft

Title:

```text
Show HN: A portable Ghostty/zsh/Kubernetes terminal setup via Homebrew
```

Text:

```text
I packaged my terminal setup so I can rebuild it on fresh macOS/Linux machines.
It includes Starship, zoxide, fzf, eza, bat, fd, ripgrep, kubectl aliases, k9s,
tmux, and Ghostty config.

Install:
brew install mathewjustin/pro-terminal/pro-terminal-setup
pro-terminal-setup install

The installer backs up managed files first, includes an intro command, and is
smoke-tested in a clean Homebrew Docker container.
```

## X / LinkedIn Draft

```text
I packaged my portable terminal setup as a Homebrew formula:

Ghostty + zsh + Starship + zoxide + fzf + eza/bat/fd/rg + kubectl aliases + k9s + tmux.

brew install mathewjustin/pro-terminal/pro-terminal-setup
pro-terminal-setup install

Repo: https://github.com/mathewjustin/pro-terminal-setup
```

## Follow-Up Content Ideas

- A short GIF/video of `terminal-intro`, `z`, `fzf`, `k9s`, and tmux splits.
- Blog post: "My portable Kubernetes-ready terminal setup."
- Add `pro-terminal-setup theme minimal`.
- Add `pro-terminal-setup doctor --json`.
- Add a real uninstall integration test.
