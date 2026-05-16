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
Set TypingSpeed 30ms
Set Theme "Catppuccin Mocha"
Set WindowBar Colorful
Set BorderRadius 14

Hide
Type "export PATH=/home/justin/pro-terminal-setup-src/assets/demo-bin:$PATH"
Enter
Type "clear"
Enter
Show

Sleep 500ms
Type "brew install mathewjustin/pro-terminal/pro-terminal-setup"
Enter
Sleep 2s

Type "pro-terminal-setup install"
Enter
Sleep 2s

Type "terminal-intro"
Enter
Sleep 3s

Type "clear"
Enter
Sleep 500ms

Type "z hr"
Enter
Sleep 1s

Type "fd Controller.java ~/hr-solution"
Enter
Sleep 1s

Type "rg @RestController ~/hr-solution"
Enter
Sleep 2s

Type "clear"
Enter
Sleep 500ms

Type "k get pods"
Enter
Sleep 1s

Type "kns default"
Enter
Sleep 1s

Type "k9"
Enter
Sleep 2s

Type "clear"
Enter
Sleep 500ms

Type "tmux"
Enter
Sleep 2s

Type "pro-terminal-setup doctor"
Enter
Sleep 3s
