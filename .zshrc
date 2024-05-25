ZSH_DISABLE_COMPFIX=true
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/warunyu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="agnoster"
# ZSH_THEME="spaceship"
# ZSH_THEME="headline~/headline"
# ZSH_THEME="typewritten"
ZSH_THEME="" # Use empty for StarShip prompt

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Docker
alias docker="/Applications/Docker.app/Contents/Resources/bin/docker"
alias clean-docker-ps="docker stop $(docker ps -aq) && docker rm $(docker ps -aq)"

# Mac cleaner
alias reset-launchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias clean-cache="sudo rm -rf ~/Library/Caches/ && sudo rm -rf ~/Library/Application\ Support/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Golang
export PATH=$PATH:/usr/local/go/bin

# Git
alias git-undo-lastcommit="git reset --soft HEAD~"
export PATH="/opt/homebrew/bin:$PATH"

# Neovim
alias vim="nvim"
alias nvim-clean="rm -rf ~/.cache/nvim && rm -rf ~/.local/share/nvim && rm -rf ~/.local/state/nvim"

# Ruby
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Go version manager
[[ -s "/Users/warunyu/.gvm/scripts/gvm" ]] && source "/Users/warunyu/.gvm/scripts/gvm"

# Starship prompt
export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"

# Ruby version manager 
export PATH="$PATH:$HOME/.rvm/bin"

# Add .local/bin on PATH
export PATH=/Users/warunyu/.local/bin:$PATH

# A modern replacement for ls
alias ls="eza --color=always --icons=always --long --no-user --no-time --no-permissions --no-filesize --git --git-ignore"

# Prompt's New line
# precmd() { print "" }

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Typewritten prompt
export TYPEWRITTEN_RELATIVE_PATH="git"

# Kitty terminal
alias kitty=/Applications/kitty.app/Contents/MacOS/kitty
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Debugging for Neovim Plugins
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# make sure the --git-dir is the same as the
# directory where you created the repo above.
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias config-lazy="lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Keybindings
bindkey "\ew" forward-word # alt+w
bindkey "\eb" backward-word # alt+b
bindkey "\el" forward-word # alt+l
bindkey "\eh" backward-word # alt+h

# Modular => Mojo 🔥
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

# Nim 👑
export PATH=/Users/warunyu/.nimble/bin:$PATH
export CHOOSENIM_NO_ANALYTICS=1
export DO_NOT_TRACK=1

# Helix
export EDITOR=hx
alias hxv="tmux split-window hx"
alias hxh="tmux split-window -h hx"

# Warp
export WARP_THEMES_DIR="$HOME/.warp/themes"

# fzf
eval "$(fzf --zsh)"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#cdd6f4,fg+:#d0d0d0,bg:-1,bg+:#262626
  --color=hl:#f38ba8,hl+:#5fd7ff,info:#cba6f7,marker:#f5e0dc
  --color=prompt:#cba6f7,spinner:#f5e0dc,pointer:#f5e0dc,header:#f38ba8
  --color=border:#262626,label:#aeaeae,query:#d9d9d9
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"
  --layout="reverse" --info="right"'
bindkey "\C-n" fzf-history-widget

# fd
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}
source ~/workspaces/github.com/junegunn/fzf-git.sh/fzf-git.sh

# eza fzf integration
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# bat
export BAT_THEME=Catppuccin_Mocha

# thefuck 
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# Zoxide (cd replacement) 
eval "$(zoxide init zsh)"
alias cd="z"

# bun completions
[ -s "/Users/warunyu/.bun/_bun" ] && source "/Users/warunyu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# deno
export DENO_INSTALL="/Users/warunyu/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# dprint
export DPRINT_INSTALL="/Users/warunyu/.dprint"
export PATH="$DPRINT_INSTALL/bin:$PATH"

# Anchor Version Manager 
export AVM_INSTALL="/Users/warunyu/.avm"
export PATH="$AVM_INSTALL/bin:$PATH"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# TERM
export TERM="xterm-256color"
[[ -n $TMUX ]] && export TERM="screen-256color"

# Alacritty
alias alacritty="/Applications/Alacritty.app/Contents/MacOS/alacritty"

# AWS
export AWS_PROFILE=warunyu

# Tmux
export PATH="/opt/homebrew/opt/bc/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"

# Github
alias \?\?="gh copilot suggest -t shell"
alias git\?="gh copilot suggest -t git"
