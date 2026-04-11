########################################
#######--------------------------#######
#####---------- ~/.zshrc ----------#####
#######--------------------------#######
########################################
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
#--------------------------------------#
########################################
#####---------- Exports ----------######
########################################

export EDITOR=nvim
export VISUAL=nvim

export CMAKE_PREFIX_PATH="/opt/homebrew/opt/llvm" # LLVM
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib" # LLVM
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include" # LLVM
export PATH="/opt/homebrew/opt/llvm/bin:$PATH" # LLVM
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"   # Qt5
export PATH="/opt/homebrew/opt/qt@6/bin:$PATH"   # Qt6
export PATH="/opt/homebrew/bin:$PATH" # Homebrew
export PATH="$HOME/.dotnet/tools:$PATH" # Dotnet
export PATH="$PATH:/Users/solyer/.dotnet/tools" # Donet tools

###########################################
#####---------- Competition ----------#####
###########################################

autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

######################################
#####---------- ZStyle ----------#####
######################################

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' squeeze-slashes true

#######################################
#####---------- Plugins ----------#####
#######################################

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^ ' autosuggest-accept


#-----------------------------------------------------------------------------------------------------------# <~~~~@~~~~~#
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # It must be past in exports # <~~~~@~~~~~#
#-----------------------------------------------------------------------------------------------------------# <~~~~@~~~~~#


#############################################
#####---------- Shell options ----------#####
#############################################

setopt AUTO_CD              # Auto CD
setopt AUTO_PUSHD           # CD history
setopt PUSHD_IGNORE_DUPS
setopt CORRECT              # T9
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE    # History without space
setopt SHARE_HISTORY        # Cross session history
setopt EXTENDED_HISTORY     # Session time
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

###########################################
#####---------- Keybindings ----------#####
###########################################

bindkey -e                              # Emacs-mode
bindkey '^[[A' history-search-backward  # Up (↑) history search
bindkey '^[[B' history-search-forward   # Down (↓) History search
bindkey '^[[H' beginning-of-line        # Home
bindkey '^[[F' end-of-line              # End
bindkey '^[[3~' delete-char             # Delete

########################################
#####---------- Autojump ----------#####
########################################

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && source /opt/homebrew/etc/profile.d/autojump.sh

#######################################
#####---------- Aliases ----------#####
#######################################

alias nefetch='neofetch'
alias nfetch='neofetch'
alias nf='neofetch'

alias ff='fastfetch'

alias bb='btop'
alias bp='btop'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

alias nivm='nvim'
alias nvi='nvim'
alias nv='nvim'
alias niv='nvim'
alias vimn='nvim'
alias vmin='nivm'

alias ls='eza --icons=always --group-directories-first -A' # Swap LS
alias ll='eza --icons=always --group-directories-first -lA --git --time-style=relative'
alias lt='eza --icons=always --tree --level=2 -A'
alias ltt='eza --icons=always --tree --level=3 -A'

alias c='clear'
alias ..='cd ..'
alias syu='brew update && brew upgrade'

alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'   # Swap CAT

################################################
#####---------- Startup commands ----------#####
################################################

neofetch

########################################
#####---------- Starship ----------#####
########################################

eval "$(starship init zsh)"

###################################
#####---------- Eza ----------#####
###################################

export LS_COLORS="di=1;34:ln=1;36:ex=1;32:*.md=1;33:*.toml=0;33:*.json=0;36:*.cpp=1;35:*.h=1;35:*.py=1;33:*.rs=1;31:*.go=1;36:*.sh=1;32"
export EZA_COLORS="$LS_COLORS:da=2;37:sn=1;37:sb=0;37:uu=1;33:un=1;31:gu=1;33:gn=1;31"
