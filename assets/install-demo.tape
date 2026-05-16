Output assets/install-demo.gif
Output assets/install-demo.mp4

Require brew
Require pro-terminal-setup
Require zsh

Set Shell "bash"
Set FontFamily "JetBrains Mono"
Set FontSize 20
Set Width 1200
Set Height 760
Set Padding 18
Set Framerate 24
Set TypingSpeed 28ms
Set Theme "Catppuccin Mocha"
Set WindowBar Colorful
Set BorderRadius 14

Hide
Type "rm -rf /tmp/pro-terminal-demo"
Enter
Type "mkdir -p /tmp/pro-terminal-demo"
Enter
Type "zoxide add /home/justin/hr-solution >/dev/null 2>&1 || true"
Enter
Type "clear"
Enter
Show

Sleep 500ms
Type "printf 'Pro Terminal Setup\\n'"
Enter
Type "printf 'A portable Ghostty + zsh + Kubernetes terminal workflow.\\n\\n'"
Enter
Sleep 1s

Type "brew install mathewjustin/pro-terminal/pro-terminal-setup >/dev/null"
Enter
Type "printf '✓ formula installed: starship zoxide fzf eza bat fd rg kubectl k9s tmux\\n\\n'"
Enter
Sleep 1s

Type "HOME=/tmp/pro-terminal-demo pro-terminal-setup install >/dev/null"
Enter
Type "printf '✓ configs applied to a fresh HOME\\n'"
Enter
Type "printf '✓ backups are automatic\\n'"
Enter
Type "printf '✓ run terminal-intro for the guided tour\\n\\n'"
Enter
Sleep 1s

Type "HOME=/tmp/pro-terminal-demo /tmp/pro-terminal-demo/.local/bin/terminal-intro | sed -n '1,14p'"
Enter
Sleep 2s

Type "clear"
Enter
Sleep 500ms

Type "printf 'Everyday workflow examples\\n\\n'"
Enter
Type "printf 'zoxide: smarter cd\\n'"
Enter
Type "HOME=/tmp/pro-terminal-demo zsh -lc 'source ~/.zshrc; zoxide add /home/justin/hr-solution; zoxide query hr'"
Enter
Sleep 1s

Type "printf '\\nfd + rg: faster find and grep\\n'"
Enter
Type "fd 'Controller.java' /home/justin/hr-solution/src/main/java | head -4"
Enter
Type "rg '@RestController' /home/justin/hr-solution/src/main/java | head -3"
Enter
Sleep 2s

Type "clear"
Enter
Sleep 500ms

Type "printf 'Kubernetes shortcuts\\n\\n'"
Enter
Type "HOME=/tmp/pro-terminal-demo zsh -lc 'source ~/.zshrc; alias k; alias kg; alias kd; alias kl; alias k9; alias k9a'"
Enter
Type "printf '\\nExamples: k get pods | kns default | k9 | k9a\\n\\n'"
Enter
Sleep 2s

Type "printf 'tmux is included for persistent panes/windows\\n'"
Enter
Type "tmux -V"
Enter
Type "printf '\\nDone: install, learn, navigate, search, Kubernetes, tmux.\\n'"
Enter
Sleep 4s
