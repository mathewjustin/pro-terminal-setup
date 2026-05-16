# Pro Terminal Setup

[![Docker smoke test](https://github.com/mathewjustin/pro-terminal-setup/actions/workflows/docker-test.yml/badge.svg)](https://github.com/mathewjustin/pro-terminal-setup/actions/workflows/docker-test.yml)
[![Homebrew](https://img.shields.io/badge/homebrew-install-blue)](https://github.com/mathewjustin/homebrew-pro-terminal)
[![License: MIT](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Turn a fresh macOS or Linux shell into a polished Kubernetes-ready terminal in minutes.

![Animated install demo](assets/install-demo.gif)

`pro-terminal-setup` is a portable Ghostty/zsh setup with a curated prompt,
navigation, fuzzy finding, JSON/YAML helpers, Kubernetes shortcuts, k9s, and
tmux defaults.

## Why This Exists

Dotfiles are personal and powerful, but they can be hard to audit before running
on a new machine. This project is a small Homebrew-installable setup for the
terminal stack I kept rebuilding: prompt, navigation, search, Kubernetes tools,
and tmux.

It aims to be boring in the right places:

- one install command
- explicit `pro-terminal-setup install` step
- backups before replacing managed files
- `doctor`, `backup`, and `uninstall` commands
- Docker smoke test for the Homebrew install path

## Install

```sh
brew install mathewjustin/pro-terminal/pro-terminal-setup
pro-terminal-setup install
```

Open a new terminal, then run:

```sh
terminal-intro
```

Ghostty is a GUI app and is installed separately:

```sh
brew install --cask ghostty
```

## Safety First

Before changing files, `install` backs up existing managed files under:

```text
~/.config/pro-terminal/backups/
```

The setup does not collect secrets, upload shell history, or install background
services. It writes plain shell config, Starship TOML, Ghostty config, and tmux
config.

## What You Get

| Tool | Purpose |
| --- | --- |
| Ghostty | Fast terminal app with the included theme config |
| zsh | Shell that loads the portable setup |
| Starship | Smart, styled prompt |
| zoxide | Smarter `cd` with `z` and `zi` |
| eza | Modern `ls` with `ll` and `lt` aliases |
| bat | Pretty `cat` and `preview` aliases |
| fd | Modern `find` |
| ripgrep | Fast project search with `rg` |
| fzf | Interactive history, file, and directory picking |
| jq | JSON slicing, filtering, and formatting |
| yq | YAML/JSON/TOML/XML slicing and editing |
| kubectl | Kubernetes aliases like `k`, `kg`, `kd`, `kl`, `kns` |
| k9s | Kubernetes terminal UI with `k9` and `k9a` |
| tmux | Portable terminal sessions, panes, and windows |

## Commands

```sh
pro-terminal-setup doctor     # check installed tools
pro-terminal-setup backup     # back up managed files
pro-terminal-setup install    # apply configs, backing up first
pro-terminal-setup uninstall  # remove managed files, keeping backups
terminal-intro                # guided tour of the setup
```

## Everyday Examples

```sh
z hr                  # jump to a remembered directory
zi                    # interactive directory picker
ll                    # detailed modern file listing
lt                    # tree view
cat pom.xml           # syntax highlighted file output
preview ~/.zshrc      # scrollable highlighted preview
fd controller         # find files/folders by name
rg EmployeeService    # search inside files
jq . package.json     # format or query JSON
yq . values.yaml      # format or query YAML
k get pods            # kubectl shortcut
kns default           # persist namespace on current kube context
k9                    # open k9s
tmux                  # start a tmux session
```

## What It Changes

`pro-terminal-setup install` writes these files:

```text
~/.config/pro-terminal/zsh.zsh
~/.config/pro-terminal/intro.sh
~/.config/pro-terminal/Brewfile
~/.config/starship.toml
~/.config/ghostty/config.ghostty
~/.tmux.conf
~/.local/bin/terminal-intro
```

It also appends this line to `~/.zshrc` if missing:

```sh
[ -f "$HOME/.config/pro-terminal/zsh.zsh" ] && source "$HOME/.config/pro-terminal/zsh.zsh"
```

Existing managed files are backed up before replacement under:

```text
~/.config/pro-terminal/backups/
```

## Safety

- No secrets are collected.
- No shell history is uploaded.
- Existing files are backed up before replacement.
- `uninstall` removes managed files and keeps backups.
- The setup is plain shell, Starship TOML, Ghostty config, and tmux config.

## Portable Setup

The same package works on macOS and Linux through Homebrew. The shell layer
auto-detects Homebrew in common locations:

```text
/opt/homebrew
/usr/local
/home/linuxbrew/.linuxbrew
```

## Development

Run the Docker smoke test locally:

```sh
docker run --rm homebrew/brew:latest bash -lc '
  set -euo pipefail
  export HOMEBREW_NO_AUTO_UPDATE=1
  brew update >/dev/null
  brew install mathewjustin/pro-terminal/pro-terminal-setup
  mkdir -p /tmp/testhome
  HOME=/tmp/testhome pro-terminal-setup install
  HOME=/tmp/testhome /tmp/testhome/.local/bin/terminal-intro | head
'
```

Regenerate the animated demo:

```sh
brew install vhs
vhs assets/install-demo.tape
```

The same tape writes:

```text
assets/install-demo.gif
assets/install-demo.mp4
```

## Launch Notes

Want to share it? See [docs/LAUNCH.md](docs/LAUNCH.md) and
[docs/STAR_HUNT.md](docs/STAR_HUNT.md).
