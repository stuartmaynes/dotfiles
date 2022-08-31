HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

# Share history across multiple zsh sessions
setopt SHARE_HISTORY
# Append to history
setopt APPEND_HISTORY
# Adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# Expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# Do not store duplications
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
# Ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# Removes blank lines from history
setopt HIST_REDUCE_BLANKS
# Verify any commands run from history
setopt HIST_VERIFY
# Don't add lines that start with a space to the history
setopt HIST_IGNORE_SPACE
# Record command start time
setopt EXTENDED_HISTORY

# Search history with the up and down arrows
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Case insensitive globbing
setopt NO_CASE_GLOB

# Change directory without cd
setopt AUTO_CD

# Auto correction of mispelt commands
setopt CORRECT
setopt CORRECT_ALL

# Auto completion
autoload -Uz compinit && compinit
# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# Partial completion suggestions
zstyle ':completion:*' list-suffixes 
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' menu select
zmodload zsh/complist

# Vi mode
bindkey -v
export KEYTIMEOUT=1

function zle-keymap-select() {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;
        viins|main) echo -ne '\e[5 q';;
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne '\e[5 q'
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' }

bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR="nvim"
export COMPOSER_HOME="$HOME/.config/composer"
export CONFIG_DIR="$HOME/.config/lazygit"

# Zoxide for fast directory changing
eval "$(zoxide init zsh)"
# eval $(docker-machine env default)

# Source ASDF to allow versions of Node and Python
source $(brew --prefix asdf)/libexec/asdf.sh

# External scripts to source
source /usr/local/share/zsh-abbr/zsh-abbr.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# This is a little buggy
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#928374,bg=bold"
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source local scripts and settings
source ~/.config/zsh/envvars.zsh

# PATH Variable
export PATH="$PATH:/usr/local/opt/mysql@5.7/bin:$HOME/.config/composer/vendor/bin:$HOME/.config/bin/"

