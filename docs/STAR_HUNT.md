# Star Hunt Sprint

Goal: get the right terminal/devops people to try the project, give feedback,
and star it if they genuinely want to remember it.

Do not spam. The best stars come from people who understand the problem and
think, "I want this later."

## Positioning

Use one of these angles depending on the audience:

| Audience | Angle |
| --- | --- |
| Terminal users | A polished Ghostty/zsh setup in one Homebrew install |
| Kubernetes users | kubectl aliases, namespace helper, k9s, tmux, jq/yq |
| Dotfiles people | Safer alternative to cloning a personal dotfiles repo |
| macOS/Linux switchers | Portable setup that works across Homebrew environments |
| Beginners | Includes `terminal-intro` to teach every command |

## One-Line Pitch

```text
A portable Ghostty/zsh terminal setup for macOS and Linux: Starship, zoxide,
fzf, eza, bat, fd, rg, jq, yq, kubectl aliases, k9s, and tmux via Homebrew.
```

## What To Ask For

Ask for feedback before stars:

```text
I would love feedback on the install flow, the tool choices, and what should be
included or kept out of a portable terminal setup like this.
```

Then make the star ask gentle:

```text
If it looks useful, a GitHub star helps me know this is worth improving.
```

## Seven-Day Sprint

Day 1:

- Pin the `v0.3.1` release link.
- Post the MP4 on LinkedIn or X.
- Ask three friends/devs to run the install and tell you where it feels unclear.

Day 2:

- Post to `r/commandline` with the terminal-user angle.
- Reply to every serious comment.
- Turn repeated questions into README improvements.

Day 3:

- Post to `r/devops` or `r/kubernetes` with the Kubernetes angle.
- Mention `jq`, `yq`, `kubectl`, `k9s`, `tmux`, and namespace helpers.

Day 4:

- Submit to Hacker News as a Show HN.
- Keep the title simple and concrete.
- Do not argue in comments. Thank people and ship fixes.

Day 5:

- Publish a short Dev.to or blog post.
- Use the story: "I kept rebuilding the same terminal setup, so I packaged it."

Day 6:

- Share a before/after terminal screenshot or short GIF.
- Add any useful improvements discovered during the first posts.

Day 7:

- Post a small changelog: "What changed after launch feedback."
- Thank early users by name where appropriate.
- Open issues for the next three improvements.

## Post Checklist

Before posting anywhere:

- README demo GIF loads.
- Install command is correct.
- Latest release exists.
- Homebrew formula fetches latest version.
- `pro-terminal-setup doctor` is green on your machine.
- There are beginner-friendly issues open.
- The post asks for feedback, not only stars.

## Places To Share

Good fit:

- GitHub profile pinned repo
- LinkedIn
- X
- `r/commandline`
- `r/devops`
- `r/kubernetes`
- Hacker News `Show HN`
- Dev.to
- Personal blog
- Team Slack/Discord communities where terminal setup is relevant

Use carefully:

- `r/unixporn`, only with a strong screenshot and rule-compliant post
- `r/macapps`, only if the post focuses on Ghostty/macOS workflow
- Product Hunt, only after the README and demo are extremely polished

## Replies To Common Comments

Why not just dotfiles?

```text
Dotfiles are great, but they can be hard to audit. This keeps the setup small,
Homebrew-installable, backed up, uninstallable, and smoke-tested.
```

Does it overwrite my config?

```text
It backs up managed files before replacement and only appends one source line to
`.zshrc` if missing. There is also an uninstall command.
```

Does it install Ghostty?

```text
Ghostty is a GUI app, so the package ships the config and documents the cask
install separately: `brew install --cask ghostty`.
```

Can I use it on macOS?

```text
Yes, the shell layer checks common Homebrew paths for Linux, Apple Silicon, and
Intel macOS.
```

## Follow-Up Improvements That Earn Stars

- Add `pro-terminal-setup theme minimal`.
- Add `pro-terminal-setup doctor --json`.
- Add shell completions.
- Add a macOS verification checklist.
- Add screenshots for tmux and k9s workflows.
- Add an uninstall integration test.

