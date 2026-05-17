#!/usr/bin/env sh

cat <<'EOF'
Pro Terminal Intro

This setup is a portable terminal workflow for Ghostty, zsh, Starship,
zoxide, fzf, modern Unix tools, jq/yq, Kubernetes, k9s, tmux, and lazygit.

1. The Pieces

Ghostty
  The terminal app. It owns the window, font rendering, theme, padding,
  transparency, and clipboard behavior.

zsh
  The shell. It runs your commands and loads this setup from:
  ~/.config/pro-terminal/zsh.zsh

Starship
  The prompt. It draws the current folder, git status, Java/Node versions,
  Docker context, command duration, and success/error arrow.

tmux
  The terminal workspace. It keeps sessions alive and lets you split panes
  and create windows inside one terminal.

lazygit
  A terminal UI for Git status, commits, branches, logs, and staging.

2. Daily Navigation

pwd
  Show current folder.

path
  Same as pwd. Added as a friendly alias.

z hr
  Jump to a remembered folder matching "hr".

zi
  Interactive folder picker from zoxide history.

cd ~/Documents
  Normal cd still works. zoxide learns folders you cd into.

zoxide query -l
  Show folders zoxide remembers.

3. Files

ll
  Detailed modern file list using eza.

lt
  Tree view using eza.

cat file.txt
  Pretty file output using bat.

preview file.txt
  Scrollable file preview with line numbers using bat.

fd Employee
  Find files or folders whose names match Employee.

rg EmployeeService
  Search inside files for EmployeeService.

jq . package.json
  Pretty-print or query JSON.

yq . values.yaml
  Pretty-print or query YAML.

4. fzf Shortcuts

Ctrl+r
  Fuzzy search command history.

Ctrl+t
  Pick a file and insert it into the current command.

Alt+c
  Pick a folder and cd into it.

Examples:
  cat "$(fd | fzf)"
  preview "$(fd toml ~/.config | fzf)"
  rg "kubectl" | fzf

5. Kubernetes

k
  Alias for kubectl.

kg pods
  kubectl get pods

kd pod my-pod
  kubectl describe pod my-pod

kl my-pod
  kubectl logs my-pod

kx
  Show current Kubernetes context.

kns
  Show current namespace.

kns default
  Permanently set current context namespace to default.

k9
  Open k9s.

k9a
  Open k9s across all namespaces.

6. tmux

tmux
  Start a tmux session.

Ctrl+b c
  New tmux window.

Ctrl+b |
  Split pane left/right.

Ctrl+b -
  Split pane top/bottom.

Ctrl+b h/j/k/l
  Move between panes.

Ctrl+b r
  Reload ~/.tmux.conf.

tmux attach
  Reattach to a previous session.

tmux ls
  List sessions.

7. Git

lg
  Open lazygit in the current repository.

lazygit
  Same tool without the short alias.

8. Portable Setup

Copy these files to another machine:
  ~/.config/pro-terminal/zsh.zsh
  ~/.config/pro-terminal/Brewfile
  ~/.config/starship.toml
  ~/.config/ghostty/config.ghostty
  ~/.tmux.conf

Install tools on macOS/Linux with Homebrew:
  brew bundle --file ~/.config/pro-terminal/Brewfile

Add this to ~/.zshrc:
  [ -f "$HOME/.config/pro-terminal/zsh.zsh" ] && source "$HOME/.config/pro-terminal/zsh.zsh"

Quick Practice

Try these:
  ll
  lt
  z hr
  zi
  fd java
  rg Employee
  jq . package.json
  yq . values.yaml
  cat pom.xml
  tmux
  lg
  k9

EOF
