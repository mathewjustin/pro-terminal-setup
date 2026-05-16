# Portable terminal setup for Ghostty/iTerm-style zsh sessions.

# Homebrew on Linux, Apple Silicon macOS, or Intel macOS.
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

export PATH="$HOME/.local/bin:$PATH"

export BAT_THEME="Catppuccin Mocha"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --strip-cwd-prefix --exclude .git"
export FZF_DEFAULT_OPTS="
  --height=45%
  --layout=reverse
  --border=rounded
  --info=inline
  --prompt='  '
  --pointer='>'
  --marker='+'
"

if [[ $- == *i* ]] && [[ -o zle ]] && command -v fzf >/dev/null 2>&1; then
  if [ -d "$(brew --prefix 2>/dev/null)/opt/fzf/shell" ]; then
    source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
    source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
  elif [ -d /usr/share/doc/fzf/examples ]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
  fi
fi

if command -v eza >/dev/null 2>&1; then
  alias ls='eza --icons=auto --group-directories-first'
  alias ll='eza -lah --icons=auto --group-directories-first --git'
  alias lt='eza --tree --level=2 --icons=auto --group-directories-first'
fi

if command -v bat >/dev/null 2>&1; then
  alias cat='bat --paging=never'
  alias preview='bat --style=numbers,changes --paging=always'
fi

alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias please='sudo $(fc -ln -1)'
alias path='pwd'
alias terminal-intro="$HOME/.config/pro-terminal/intro.sh"

if command -v kubectl >/dev/null 2>&1; then
  alias k='kubectl'
  alias kg='kubectl get'
  alias kd='kubectl describe'
  alias kl='kubectl logs'
  alias kx='kubectl config current-context'

  kns() {
    if [ -z "$1" ]; then
      kubectl config view --minify --output 'jsonpath={..namespace}'
      printf '\n'
      return
    fi

    kubectl config set-context --current --namespace "$1"
    printf 'Current namespace: '
    kubectl config view --minify --output 'jsonpath={..namespace}'
    printf '\n'
  }

  if [[ -o zle ]]; then
    source <(kubectl completion zsh)
    compdef k=kubectl
  fi
fi

if command -v k9s >/dev/null 2>&1; then
  alias k9='k9s'
  alias k9a='k9s --all-namespaces'
fi

export _ZO_ECHO=0
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

if [[ "${TERM:-}" != "dumb" ]] && command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
