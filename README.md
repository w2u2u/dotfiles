# Dotfiles

Store dotfiles

## Configurations

### Shell

- [Zsh](https://github.com/ohmyzsh/ohmyzsh)

### Terminal Emulators

- [Alacritty](https://github.com/alacritty/alacritty)
- [Kitty](https://github.com/kovidgoyal/kitty)

### Terminal Multiplexer

- [Tmux](https://github.com/tmux/tmux)

### Text Editors

- [Neovim](https://github.com/neovim/neovim)
- [Helix](https://github.com/helix-editor/helix)

### Shell Prompts

- [Starship](https://github.com/starship/starship)
- [Spaceship](https://github.com/spaceship-prompt/spaceship-prompt)

### Window managers

- [Yabai](https://github.com/koekeishiya/yabai)
- [Skhd](https://github.com/koekeishiya/skhd)

---

## Creating the Repo

```sh
git init --bare $HOME/.dotfiles

echo 'alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"' >> ~/.zshrc

config config --local status.showUntrackedFiles no

config add ~/.config/kitty/kitty.conf
config add ~/.tmux.conf
config add ~/.zshrc
config commit -m "Add .kitty.conf/.tmux.conf/.zshrc files"
config push
```
