# ~/.zshrc

# === Environment ===
export EDITOR="nvim"
export VISUAL="nvim"
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# === Oh My Zsh Setup ===
export ZSH="$HOME/.oh-my-zsh"

# === Prompt ===
#autoload -Uz promptinit
#promptinit  # Initialize the prompt system

# Directly set the prompt theme
ZSH_THEME="avit"  # You can replace this with any other theme
PROMPT=$ZSH_THEME  # This sets the prompt immediately

# === Aliases ===
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias ..='cd ..'
alias ...='cd ../..'

# === History ===
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# === Better Tab Completion ===
autoload -Uz compinit
compinit

# === Keybindings ===
bindkey -e  # Use emacs keybindings (default); use `bindkey -v` for vim mode

# === Load local overrides ===
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# === Plugins ===
plugins=(git)
source $ZSH/oh-my-zsh.sh

