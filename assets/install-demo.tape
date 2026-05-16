Output assets/install-demo.gif

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
Set TypingSpeed 35ms
Set Theme "Catppuccin Mocha"
Set WindowBar Colorful
Set BorderRadius 14

Hide
Type "rm -rf /tmp/pro-terminal-demo"
Enter
Type "mkdir -p /tmp/pro-terminal-demo"
Enter
Type "clear"
Enter
Show

Sleep 700ms
Type "brew install mathewjustin/pro-terminal/pro-terminal-setup"
Enter
Sleep 2s

Type "HOME=/tmp/pro-terminal-demo pro-terminal-setup install"
Enter
Sleep 2s

Type "HOME=/tmp/pro-terminal-demo /tmp/pro-terminal-demo/.local/bin/terminal-intro | head -10"
Enter
Sleep 2s

Type "HOME=/tmp/pro-terminal-demo zsh -lc 'source ~/.zshrc; command -v starship zoxide fzf kubectl k9s tmux; alias k; alias k9'"
Enter
Sleep 2s

Type "HOME=/tmp/pro-terminal-demo zsh -lc 'source ~/.zshrc; pro-terminal-setup doctor | head -8'"
Enter
Sleep 3s
