# Dotfiles
Store dotfiles for [kitty](https://github.com/kovidgoyal/kitty), [tmux](https://github.com/tmux/tmux), and [Neovim](https://github.com/neovim/neovim)

Shell Prompts
- [Starship](https://github.com/starship/starship)
- [Spaceship](https://github.com/spaceship-prompt/spaceship-prompt)

---
## Creating the Repo
```
git init --bare $HOME/.dotfiles

echo 'alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"' >> ~/.zshrc

config config --local status.showUntrackedFiles no

config add ~/.config/kitty/kitty.conf
config add ~/.tmux.conf
config add ~/.zshrc
config commit -m "Add .kitty.conf/.tmux.conf/.zshrc files"
config push
```
