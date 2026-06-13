# sirius1pro

Configuration files for various cli tools.

## CLI tools

- `lazygit` — terminal git UI
- `yazi` — terminal file manager
- `eza` — modern ls with icons
- `bat` — modern cat with syntax highlighting
- `fzf` — fuzzy finder
- `btop` — system monitor
- `dust` — disk usage
- `ripgrep` — fast code search
- `git-delta` — better git diffs
- `hexyl` - hex viewer
- `glow` - markdown viewer
- `zellij` - terminal session and window manager
- `tmux` - terminal session and window manager
- `gitmux` - tmux git support
- `tmuxai` - tmux ai support

## Install via brew

```sh
brew install lazygit yazi eza bat fzf btop dust ripgrep git-delta glow hexyl zellij tmux gitmux tmuxai
```

## Git Delta Config

```sh
git config --global core.pager delta
git config --global interactive.diffFilter "delta --color-only"
git config --global delta.navigate true
git config --global delta.side-by-side true
git config --global merge.conflictstyle diff3
git config --global diff.colorMoved default
```

## Shell plugins

```sh
brew install zsh-autosuggestions
brew install zsh-autocomplete
brew install zsh-syntax-highlighting
brew install zsh-you-should-use
```

## Zsh configuration

```sh
# After other setup
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

# Aliases
alias zshc="$EDITOR ~/.zshrc"
alias a5ttyc="$EDITOR ~/.config/alacritty/alacritty.toml"
alias zellijc="$EDITOR ~/.config/zellij/config.kdl"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias ls="eza --icons"
alias ll="eza --icons -la"
alias lt="eza --icons --tree --level=2"
alias cat="bat"

# Must be last
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```


